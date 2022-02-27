using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_User_chaReply : System.Web.UI.Page
{

    public string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["UserName"];

        SqlDataSource1.SelectCommand = "SELECT [FaName], [HuiName], [Title], [FaContents], [HuiContents], [ReplyTime] FROM [UserReplyTable] Where HuiName='" + id+"'";
    }
}