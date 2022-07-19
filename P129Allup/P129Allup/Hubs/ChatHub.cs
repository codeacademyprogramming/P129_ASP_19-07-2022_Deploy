using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore;
using P129Allup.DAL;
using P129Allup.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace P129Allup.Hubs
{
    public class ChatHub : Hub
    {
        private readonly UserManager<AppUser> _userManager;
        private readonly AppDbContext _context;

        public ChatHub(UserManager<AppUser> userManager, AppDbContext context)
        {
            _userManager = userManager;
            _context = context;
        }

        public override Task OnConnectedAsync()
        {
            if (Context.User.Identity.IsAuthenticated)
            {
                AppUser appUser = _userManager.Users.FirstOrDefaultAsync(u => !u.IsAdmin && u.UserName == Context.User.Identity.Name).Result;

                if (appUser != null)
                {
                    appUser.ConnectionId = Context.ConnectionId;
                    appUser.ConnectedAt = null;

                    IdentityResult identityResult = _userManager.UpdateAsync(appUser).Result;

                    Clients.All.SendAsync("online", appUser.Id);
                }
            }

            return base.OnConnectedAsync();
        }

        public override Task OnDisconnectedAsync(Exception exception)
        {
            if (Context.User.Identity.IsAuthenticated)
            {
                AppUser appUser = _userManager.Users.FirstOrDefaultAsync(u => !u.IsAdmin && u.UserName == Context.User.Identity.Name).Result;

                if (appUser != null)
                {
                    appUser.ConnectionId = null;
                    appUser.ConnectedAt = DateTime.UtcNow.AddHours(4);

                    IdentityResult identityResult = _userManager.UpdateAsync(appUser).Result;

                    Clients.All.SendAsync("ofline", appUser.Id);
                }
            }

            return base.OnDisconnectedAsync(exception);
        }

        public async Task SendMessage(string reciveruserid, string message)
        {
            if (Context.User.Identity.IsAuthenticated)
            {
                AppUser sender = await _userManager.Users.FirstOrDefaultAsync(u => !u.IsAdmin && u.UserName == Context.User.Identity.Name);

                if (sender != null)
                {
                    AppUser reciever = await _userManager.Users.FirstOrDefaultAsync(u => !u.IsAdmin && u.Id == reciveruserid);

                    if (reciever != null )
                    {
                        Message msg = new Message
                        {
                            CreatedAt = DateTime.UtcNow.AddHours(4),
                            RecieverId = reciveruserid,
                            SenderId = sender.Id,
                            Text = message
                        };

                        await _context.Messages.AddAsync(msg);
                        await _context.SaveChangesAsync();

                        if (reciever.ConnectionId != null)
                        {
                            await Clients.Client(reciever.ConnectionId).SendAsync("privatemessage", message, sender.Id, reciever.Id);

                        }
                    }
                }
            }
        }
    }
}
