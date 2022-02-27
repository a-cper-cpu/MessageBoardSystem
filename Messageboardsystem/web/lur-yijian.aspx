<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lur-yijian.aspx.cs" Inherits="web_lur_yijian" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="../css/index.css"/>
    <title></title>
</head>
<body>

    <h1>留言板首页</h1>

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

	<p style="color:lightsteelblue;font-size:15px;margin-left:30px">当前位置 ：留言板 > 首页</p>




    <form id="form1" runat="server">
        <div>
			<asp:Panel ID="Panel1" runat="server" style="text-align:center " Width="100%" HorizontalAlign="Center" >
            <table style="width:100%;" border="1" style="color:#4A3C8C;background-color:#E7E7EF;">
                

                <tr>
                    <td class="auto-style2">
                        <span style="color: navy">姓名：</span>
                    </td>

                    </tr>
                <tr>
                    <td style="width: 23%">
                        <asp:TextBox ID="FaIDTextBox" runat="server" Width="97%" Text=''>
                        </asp:TextBox>
                    </td>
                   </tr>
               
                <tr>
                    <td  class="auto-style1">
                        <span style="color: navy">给本站的意见：</span>
                    </td>
                   
          
                </tr>
                <tr>
                    

                         <td>
                        <asp:TextBox ID="HuiTextBox" runat="server" Width="100%" Text='' Height="100px" TextMode="MultiLine" CssClass="auto-style3"></asp:TextBox>
                    </td>
                   

                </tr>
                
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnSave" runat="server"
                            OnClick="btnSave_Click" Text="提交" style="height: 27px" />
                        &nbsp;
                        <input id="Reset1" type="reset" value="重置" />
                    </td>               
                </tr>
            </table>
        </asp:Panel>
        </div>
    </form>
</body>
</html>
