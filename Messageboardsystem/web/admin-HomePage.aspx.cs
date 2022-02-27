using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_admin_HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["UserName"];

        string Url = "Backstage.aspx?UserName=" + id;
        string Url1 = "admin-guanliUser.aspx?UserName=" + id;
        string Url2= "admin-gonggao.aspx?UserName=" + id;
        string Url3= "admin-guanlisq.aspx?UserName=" + id;
        string Url4= "admin-jianyi.aspx?UserName=" + id;

        HyperLink1.NavigateUrl = Url;
        HyperLink2.NavigateUrl = Url1;
        HyperLink3.NavigateUrl = Url2;
        HyperLink4.NavigateUrl = Url3;
        HyperLink5.NavigateUrl = Url4;
      
    }
}