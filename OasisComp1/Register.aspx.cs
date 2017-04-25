using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace OasisComp1
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void regbutt_Click(object sender, EventArgs e)
        {
            //create connection
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            //create managemenent of users
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            //user role assign
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            //user creation
            var user = new IdentityUser() { UserName = utxtbox.Text, Email = etxtbox.Text };
            IdentityResult result = manager.Create(user, ptxtbox.Text);
           

            if (result.Succeeded)
            
            {
                errormsg.Text = "Login Succeeded";
            }
            else
            {
                errormsg.Text = "An error has occured" + result.Errors.FirstOrDefault();
            }

        }
    }
}