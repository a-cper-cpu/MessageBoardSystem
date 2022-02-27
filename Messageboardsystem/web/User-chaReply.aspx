<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User-chaReply.aspx.cs" Inherits="web_User_chaReply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MessageBoardConnectionString %>" SelectCommand="SELECT [FaName], [HuiName], [Title], [FaContents], [HuiContents], [ReplyTime] FROM [UserReplyTable]">
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" HorizontalAlign="Center" Width="80%" DataKeyNames="FaName,HuiName,ReplyTime">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="FaName" HeaderText="发布人姓名" SortExpression="FaName" ReadOnly="True" />
                    <asp:BoundField DataField="HuiName" HeaderText="回复人姓名" SortExpression="HuiName" ReadOnly="True" />
                    <asp:BoundField DataField="Title" HeaderText="发布标题" SortExpression="Title" />
                    <asp:BoundField DataField="FaContents" HeaderText="发布内容" SortExpression="FaContents" />
                    <asp:BoundField DataField="HuiContents" HeaderText="回复内容" SortExpression="HuiContents" />
                    <asp:BoundField DataField="ReplyTime" HeaderText="回复时间" ReadOnly="True" SortExpression="ReplyTime" />
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
        </div>
    </form>
</body>
</html>
