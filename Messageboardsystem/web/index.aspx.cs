using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT [Title], [UserName], [contents], [Pbtime], [ReplyNumber] FROM [UserPublicaTable] WHERE status='lur'";

        SqlDataSource2.SelectCommand = "SELECT * FROM [admin_jianyi] Where status='login'";
    }
}