using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["UserName"];
        string Url = "user-publish.aspx?UserName=" + id;
        string Url2= "user-chaReply.aspx?UserName=" + id;
        string Url3= "User-Savecontents.aspx?UserName=" + id;
        string Url4= "User-jiaoliu.aspx?UserName=" + id;
        string Url5= "User-shenq.aspx?UserName=" + id;
        string Url6= "login-yijian.aspx?UserName=" + id;
        string Url7= "User-Fabiao.aspx?UserName=" + id;

        HyperLink1.NavigateUrl = Url;

        HyperLink2.NavigateUrl = Url2;

        HyperLink3.NavigateUrl = Url3;

        HyperLink4.NavigateUrl = Url4;

        HyperLink5.NavigateUrl = Url5;

        HyperLink6.NavigateUrl = Url6;

        HyperLink7.NavigateUrl = Url7;
    }

 
}