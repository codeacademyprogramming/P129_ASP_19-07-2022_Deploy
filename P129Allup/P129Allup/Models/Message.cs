using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace P129Allup.Models
{
    public class Message
    {
        public int Id { get; set; }
        public Nullable<DateTime> CreatedAt { get; set; }
        public Nullable<DateTime> DeletedAt { get; set; }
        public bool IsDeleted { get; set; }
        public string Text { get; set; }
        public string SenderId { get; set; }
        public AppUser Sender { get; set; }

        public string RecieverId { get; set; }
        public AppUser Reciever { get; set; }

    }
}
