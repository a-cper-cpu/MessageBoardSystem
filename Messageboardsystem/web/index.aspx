<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="web_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="../css/index.css"/>
    <title>留言板首页</title>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MessageBoardConnectionString %>"></asp:SqlDataSource>
           
            <asp:DataList ID="DataList1" runat="server" DataKeyField="UserName" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="80%" HorizontalAlign="Center">
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <ItemTemplate>
                   
                   <marquee><span style="font-weight: bolder;font-size: 40px;color: white;">
                   
                    <asp:Label ID="contentsLabel" runat="server" Text='<%# Eval("contents") %>' />

                       </span></marquee>
                  
                   
                  
                   
         </ItemTemplate>

                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />

            </asp:DataList>
            
            <br />
            <br />
            <br/>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MessageBoardConnectionString %>"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" HorizontalAlign="Center" Width="70%" DataKeyNames="UserName,Pbtime">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" ReadOnly="True" />
                    <asp:BoundField DataField="contents" HeaderText="contents" SortExpression="contents" />
                    <asp:BoundField DataField="Pbtime" HeaderText="Pbtime" SortExpression="Pbtime" ReadOnly="True" />
                    <asp:BoundField DataField="ReplyNumber" HeaderText="ReplyNumber" SortExpression="ReplyNumber" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
