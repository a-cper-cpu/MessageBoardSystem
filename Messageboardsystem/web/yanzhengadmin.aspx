<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yanzhengadmin.aspx.cs" Inherits="web_yanzhengadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="../css/yzadmin.css"/>
    <title>留言板验证界面</title>
</head>
<body>

     <h1>留言板验证界面</h1>

	<div class="MENU">
      <ul>
					<li>
						<a href="index.aspx">首页</a>

					</li>

					<li>
						<a href="qianduan.aspx" style="text-decoration: none;">留言</a>
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

	<p style="color:lightsteelblue;font-size:15px;margin-left:30px">当前位置 ：留言板 > 验证界面</p>


	<br/><br/><br/><br/><br/>


	<div class="f">
    <form id="form1" runat="server">
       
			<table>

				
				<tr>

					<td>
                        <asp:Label ID="Label1" runat="server" Text="请输入管理员注册密钥："></asp:Label>

					</td>
					<td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator2"  runat="server" ErrorMessage="密钥不能为空"  ControlToValidate="TextBox1" ForeColor="Red" Width="120px" ></asp:RequiredFieldValidator>
						
					</td>


				</tr>

			
				<tr>

             <td>   
				 <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" /> 
				 </td>
					<td>
                        <input id="Reset1" type="reset" value="重置" />
					</td>
					</tr>

			</table>
       
    </form>

		</div>
</body>
</html>
