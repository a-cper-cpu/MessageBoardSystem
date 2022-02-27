<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="web_HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="../css/USER-PAGE.css"/>
	<script src="../JS/jquery-1.12.4.min.js"></script>
	<script  runat="server">

        public void Page_Load1(object sender, EventArgs e)
        {

            string id = Request.QueryString["UserName"];

          //  Label1.Text = id;
            string Url = "user-publish.aspx?UserName=" + id;

            Response.Redirect(Url);
        }


        public string a() {
            string id = Request.QueryString["UserName"];

         //   Label1.Text = id;
            string Url = "user-publish.aspx?UserName=" + id;

            return Url;
        }

	</script>
    <title>留言板用户个人页</title>
</head>
<body>

	
    <h1>留言板用户个人页</h1>

	<div class="MENU">
      <ul>
					<li>
						<a href="index.aspx">首页</a>

					</li>

					<li>
						<a href="qianduan.aspx" ">留言</a>
					</li>
		 
					<li>
						<a href="Login-User.aspx">用户登录</a>
						
					</li>
			 <li>
				 <a href="login.aspx">管理员登录</a>

			 </li>
					<li>
						<a href="AboutWeb.aspx">关于网站</a>
					</li>
					
					
				</ul>
		</div>

	<p style="color:black;font-size:15px;margin-left:30px">当前位置 ：留言板 > 用户登录 >用户主页</p>

	<div class="rc" >
				<div class="wz">
					<span class="jd111">
                        <asp:HyperLink ID="HyperLink1"    runat="server"  target="rightname" >留言板</asp:HyperLink>
                       </span>

					<span class="jd111">
						
                        <asp:HyperLink ID="HyperLink2" runat="server" target="rightname" >查看回复</asp:HyperLink>
						</span>
					<span class="jd111">
						
						<span class="jd111">
						
                        <asp:HyperLink ID="HyperLink7" runat="server" target="rightname" >发表留言</asp:HyperLink>
						</span>
					<span class="jd111">

                        <asp:HyperLink ID="HyperLink3" runat="server" target="rightname">内容保存区</asp:HyperLink>
						
						</span>
					<span class="jd111">
                        <asp:HyperLink ID="HyperLink4" runat="server" target="rightname">交流区</asp:HyperLink>
						</span>
					<span class="jd111">
                        <asp:HyperLink ID="HyperLink5" runat="server" target="rightname">申请区</asp:HyperLink>
						</span>
					<span class="jd111">
                        <asp:HyperLink ID="HyperLink6" runat="server" target="rightname">意见区</asp:HyperLink>
						</span>
				</div>
				<div class="jdd">
					<iframe src="user-publish.aspx" width="1200px" height="500px" name="rightname" frameborder="0"></iframe>
				</div>
				
			</div>

 
	
	 <form id="form1" runat="server">

  </form>

</body>
</html>
