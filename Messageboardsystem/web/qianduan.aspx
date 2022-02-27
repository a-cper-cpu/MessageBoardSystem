<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qianduan.aspx.cs" Inherits="web_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="../css/qiantai.css"/>
    <title></title>
    <style type="text/css">
        #Reset1 {
            width: 96px;
            margin-left: 47px;
        }
        #Submit1 {
            width: 101px;
            margin-left: 317px;
        }
    </style>
</head>
<body>
   
    <h1 style="text-align:center">&nbsp;&nbsp;&nbsp; &nbsp;留言板留言前台</h1>

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

	<p style="color:white;font-size:15px;margin-left:30px">当前位置 ：留言板 > 留言前台</p>

    
    <form id="form1" runat="server">
        <div>
            
        </div>
        <p>
            <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 519px; margin-bottom: 0px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="搜索" Width="53px" OnClick="Button1_Click" />
            <asp:Label ID="Label7" runat="server" Text="(请输入发表人姓名)"></asp:Label>
&nbsp;<asp:Button ID="Button2" runat="server" Text="提供意见" Width="110px" OnClick="Button2_Click" />
        </p>
            <div style="width:100%; text-align:center;">
            <asp:Label ID="Label6" runat="server" style="margin-left: 29px" Width="1072px"></asp:Label>
                </div>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Caption="留言" CellPadding="3" style="margin-left: 363px" Width="838px">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

                <Columns>
                    <asp:HyperLinkField HeaderText="详情"
                        DataNavigateUrlFields="UserName" DataNavigateUrlFormatString="Reply.aspx?UserName={0}" 
                         NavigateUrl="~/web/Reply.aspx" Text="查看">
                    <HeaderStyle BackColor="#FFCCFF" Font-Bold="True" />
                    </asp:HyperLinkField>
                </Columns>
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
        <br />

        <p style="margin-left:30%">
            <asp:Label ID="Label3" runat="server" Text="发表留言："></asp:Label>
        </p>
        <p style="margin-left:30%">
            <asp:Label ID="Label4" runat="server" Text="标题："></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="发表人："></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p style="margin-left:30%">
            <asp:Label ID="Label5" runat="server" Text="内容："></asp:Label>
        </p>
        <p style="margin-left:30%">
            <asp:TextBox ID="TextBox1" runat="server" Height="120px" TextMode="MultiLine" Width="557px"></asp:TextBox>
        </p>
        <p style="margin-left:30%">
            <asp:Button ID="Button5" runat="server" Text="提交" Width="155px"  style="margin-left: 74px" OnClick="Button5_Click" />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Button ID="Button6" runat="server" Height="27px" style="margin-top: 0px; margin-left: 0px;" Text="重置" Width="171px" OnClick="Button6_Click" />
        </p>
        <p style="margin-left:30%">
            &nbsp;</p>

    </form>
</body>
</html>
