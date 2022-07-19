using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using P129Allup.DAL;
using P129Allup.ViewModels.BasketViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using P129Allup.ViewModels.HomeViewModels;
using P129Allup.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Authorization;

namespace P129Allup.Controllers
{
    public class HomeController : Controller
    {
        private readonly AppDbContext _context;
        private readonly UserManager<AppUser> _userManager;

        public HomeController(AppDbContext context, UserManager<AppUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        public async Task<IActionResult> Index()
        {
            List<Product> products = await _context.Products.ToListAsync();

            HomeViewModel homeViewModel = new HomeViewModel
            {
                Products = await _context.Products.ToListAsync(),
                Sliders = await _context.Sliders.ToListAsync(),
                BestSeller = products.Where(p=>p.IsBestSeller).ToList(),
                Feature = products.Where(p => p.IsFeature).ToList(),
                NewArrivel = products.Where(p => p.IsNewArrivel).ToList()
            };

            return View(homeViewModel);
        }

        [Authorize(Roles ="Member")]
        public async Task<IActionResult> Chat()
        {
            List<AppUser> users = await _userManager.Users.Where(u => !u.IsAdmin && u.UserName != User.Identity.Name).ToListAsync();

            return View(users);
        }

        [Authorize(Roles ="Member")]
        public async Task<IActionResult> GetMessages(string userId)
        {
            AppUser appUser = await _userManager.FindByNameAsync(User.Identity.Name);

            List<Message> messages = await _context.Messages.Where(m => (m.SenderId == appUser.Id || m.RecieverId == appUser.Id) && (m.RecieverId == userId || m.SenderId == userId)).OrderBy(m=>m.CreatedAt).ToListAsync();

            return PartialView("_MessageListPartial",messages);
        }

        //public  IActionResult GetSession()
        //{
        //    string session = HttpContext.Session.GetString("p129");

        //    return Content(session);
        //}

        //public IActionResult GetCookie()
        //{
        //    string session = HttpContext.Request.Cookies["p129"];

        //    return Content(session);
        //}
    }
}
