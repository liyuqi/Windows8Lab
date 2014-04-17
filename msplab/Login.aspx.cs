using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace msplab
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Permission"] != null && Session["Permission"].ToString() == "admin")
            {
                Response.Redirect("/Manage.aspx");
            }
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (Login1.UserName == "msptw" && Login1.Password == "msptw")
            {
                Session["Permission"] = "admin";
                e.Authenticated = true;
                Response.Redirect("/Manage.aspx");
            }
            else
            {
                e.Authenticated = false;
                Response.Redirect("/Login.aspx");
            }
        }
    }
}