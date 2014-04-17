using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace msplab
{
    public partial class enroll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlDataSource2_Selected();
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            Response.Write("<script>alert('感謝您的報名, 活動小組將在三個工作天內寄發活動通知信給您!')</script>");
        }

    }
}