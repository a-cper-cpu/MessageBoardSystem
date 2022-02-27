<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="web_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" type="text/css" href="../css/admin-login.css"/>
    <title>留言板管理员登录</title>
    <style type="text/css">
        #Text1 {
            width: 381px;
            margin-left: 0px;
            margin-bottom: 0px;
        }
        #Text2 {
            width: 379px;
            margin-left: 0px;
        }
        #Submit1 {
            margin-left: 150px;
        }
        #Submit2 {
            margin-left:0px;
        }
        #Reset1 {
            margin-left: 84px;
        }
    </style>
</head>
<body>
    
    <h1>留言板管理员登录</h1>

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

	<p style="color:black;font-size:15px;margin-left:30px">当前位置 ：留言板 > 管理员登录界面</p>


    <br/> <br/> <br/>

    <div class="login">
    <form id="form1" runat="server">
        <table>
            <tr>
                <td colspan="2">管理员登录</td>

            </tr>
            <tr>
      <td> 
          <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
          </td>
<td>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="225px"></asp:TextBox>
  </td>
    </tr>
            <tr>
       <td> 
           <asp:Label ID="Label2" runat="server" Text="密   码："></asp:Label>
           </td>
     <td>
<asp:TextBox ID="TextBox2" runat="server" Width="222px"></asp:TextBox>
         </td>
   </tr>
            <tr>
     <td>  
         <asp:Button ID="Button1" runat="server" Height="27px" style="margin-left: 84px" Text="登录" Width="65px" OnClick="Button1_Click" />
         </td>
     
                <td>

                    <asp:Button ID="Button4" runat="server" Height="27px" Width="65px" Text ="注册" OnClick="Button4_Click" />

                </td>

          </tr>

            <tr>

                 <td colspan="2">
          <asp:Button ID="Button2" runat="server" style="margin-left: 45px" Text="重置" Width="98px" OnClick="Button2_Click" />
        </td>

            </tr>

            <tr>
       <td colspan="2"><asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="margin-left: 0px" Text="返回前台" Width="224px" />
           </td>
       </tr>
            <td colspan="2">
            <asp:Label ID="Label4" runat="server"></asp:Label>
     </td>

            </table>
    </form>
        </div>

    <div class="banq">
		<p>版权&copy;a-cper-cpu</p>
	</div>

    </body>
</html>
