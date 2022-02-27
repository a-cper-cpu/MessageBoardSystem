<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login-User.aspx.cs" Inherits="web_Login_User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="../css/User-Login.css"/>

    <title>用户登录界面</title>
    <style type="text/css">
        #Reset1 {
            width: 54px;
            margin-left: 70px;
        }
    </style>
</head>
<body>
    <h1>留言板用户登录</h1>

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

	<p style="color:white;font-size:15px;margin-left:30px">当前位置 ：留言板 > 用户登录</p>

	<br/><br/><br/>

	<div class="login">
    <form id="form1" runat="server">
        <table>

			<tr>
				<td colspan="2" style="text-align:center;font-size:30px">用户登录</td>
			</tr>
			<tr>
				<td>
                    <asp:Label ID="USERNAMELabel" runat="server" Text="用户名："></asp:Label>

				</td>
				<td>
                    <asp:TextBox ID="USERNAMETextBox" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
                    <asp:Label ID="PASSWORDLabel" runat="server" Text="密码："></asp:Label>

				</td>
				<td>
                    <asp:TextBox ID="PASSWORDTextBox" runat="server"></asp:TextBox>
				</td>
			</tr>

			<tr>
				<td>
                    <asp:Button ID="LOGINButton" runat="server" Text="登录" style="margin-left: 40px" OnClick="LOGINButton_Click" />

				</td>
				<td>
                    <input id="Reset1" type="reset" value="重置" />
				</td>
			</tr>
			<tr>
				<td colspan="2">还没有账号？<a href="register-user.aspx" style="color:red;font-size:15px">注册新账号</a></td>
			</tr>
        </table>
    </form>

		</div>
	<br/><br/><br/>
	<div class="banq">
		<p>版权&copy;a-cper-cpu</p>
	</div>
</body>
</html>
