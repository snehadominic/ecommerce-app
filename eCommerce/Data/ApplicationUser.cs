using Microsoft.AspNetCore.Identity;
using System;

namespace eCommerce.Data
{
    // Add profile data for application users by adding properties to the ApplicationUser class
    public class ApplicationUser : IdentityUser
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public DateTime BirthDate { get; set; }
        public DateTime CreatedOnDate { get; set; }
        public bool IsDeleted { get; set; }
        //et or delete this order.
        //public ICollection<Order> Order { get; set; }
    }
}
