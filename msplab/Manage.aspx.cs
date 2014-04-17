using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace msplab
{
    public partial class manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Permission"] == null || Session["Permission"] != "admin")
            {
                Response.Redirect("/login.aspx");
            }
        }

        protected void SqlDataSource2_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            Label1.Text = "梯次"+ DropDownList1.SelectedValue +"人數" + e.AffectedRows.ToString();
        }
    }
}