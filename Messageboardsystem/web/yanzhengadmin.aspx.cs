using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_yanzhengadmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "abcdefg123456abc")
        {
            Response.Redirect("register-admin.aspx");
        }
        else {
            Response.Write("<script>alert('比对错误，请输入正确的密钥！')</script>");
        }
    }
}