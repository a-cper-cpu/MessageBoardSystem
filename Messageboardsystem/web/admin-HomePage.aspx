<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin-HomePage.aspx.cs" Inherits="web_admin_HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="../css/USER-PAGE.css"/>
    <title>留言板管理员页面</title>
</head>
<body>
     <h1>留言板管理员个人页</h1>

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

	<p style="color:black;font-size:15px;margin-left:30px">当前位置 ：留言板 > 用户登录 >管理员主页</p>

	<div class="rc" >
				<div class="wz">
					<span class="jd111">
                        <asp:HyperLink ID="HyperLink1"    runat="server"  target="rightname" >管理留言</asp:HyperLink>
                       </span>

					<span class="jd111">
						
                        <asp:HyperLink ID="HyperLink2" runat="server" target="rightname" >管理用户</asp:HyperLink>
						</span>
					<span class="jd111">
						
                        <asp:HyperLink ID="HyperLink3" runat="server" target="rightname">管理公告</asp:HyperLink>
						
						</span>
					<span class="jd111">
                        <asp:HyperLink ID="HyperLink4" runat="server" target="rightname">管理申请</asp:HyperLink>
						</span>
					<span class="jd111">
                        <asp:HyperLink ID="HyperLink5" runat="server" target="rightname">管理建议</asp:HyperLink>
						</span>
				</div>
				<div class="jdd">
					<iframe src="Backstage.aspx" width="1200px" height="500px" name="rightname" frameborder="0"></iframe>
				</div>
				
			</div>

</body>
</html>
