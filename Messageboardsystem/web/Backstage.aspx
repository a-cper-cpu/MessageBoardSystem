<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Backstage.aspx.cs" Inherits="web_Backstage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="../css/adminpage.css"/>
    <title>留言板管理员页面</title>
</head>
<body>
    
    
       

    <div class="form">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="所有路人留言信息如下："></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" 
                CellPadding="3"  
                Width="70%" pageindexchanging="GridView1_PageIndexChanging" 
                AllowPaging="True"  PageIndexChanged="GridView1_PageIndexChanged" 
                DataBound="GridView1_DataBound" HorizontalAlign="Center">
               
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
                     <asp:HyperLinkField HeaderText="删除" Text="删除" DataNavigateUrlFields="UserName" DataNavigateUrlFormatString="Backstage.aspx?UserName={0}" NavigateUrl="~/web/Backstage.aspx"
                         />
                </Columns>
            </asp:GridView>

            <br/>
            <div style="text-align:center;"><asp:Label ID="Label7" runat="server" Text="所有用户留言如下："></asp:Label></div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MessageBoardConnectionString %>" SelectCommand="SELECT * FROM [UserPublicaTable]  Where status='User'  and savecontents='false'" DeleteCommand="DELETE FROM [UserPublicaTable] WHERE [UserName] = @UserName AND [Pbtime] = @Pbtime" InsertCommand="INSERT INTO [UserPublicaTable] ([UserName], [Title], [contents], [Pbtime], [ReplyNumber]) VALUES (@UserName, @Title, @contents, @Pbtime, @ReplyNumber)" UpdateCommand="UPDATE [UserPublicaTable] SET [Title] = @Title, [contents] = @contents, [ReplyNumber] = @ReplyNumber WHERE [UserName] = @UserName AND [Pbtime] = @Pbtime">
                <DeleteParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Pbtime" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="contents" Type="String" />
                    <asp:Parameter Name="Pbtime" Type="DateTime" />
                    <asp:Parameter Name="ReplyNumber" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="contents" Type="String" />
                    <asp:Parameter Name="ReplyNumber" Type="Int32" />
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Pbtime" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
           
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserName,Pbtime" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="80%">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="contents" HeaderText="contents" SortExpression="contents" />
                    <asp:BoundField DataField="Pbtime" HeaderText="Pbtime" ReadOnly="True" SortExpression="Pbtime" />
                    <asp:BoundField DataField="ReplyNumber" HeaderText="ReplyNumber" SortExpression="ReplyNumber" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <asp:Label ID="Label6" runat="server"></asp:Label>
            <br />
            <hr/>
            <asp:Label ID="Label2" runat="server" Text="发表留言："></asp:Label>
            <br />
&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="标题："></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="发言人："></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="内容："></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Height="130px" TextMode="MultiLine" Width="441px"></asp:TextBox>
            <br />
&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="27px" style="margin-left: 38px" Text="提交" Width="89px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" style="margin-left: 102px" Text="重置" Width="97px" OnClick="Button2_Click" />
            <br />
            <br />
            <br />
        </div>
    </form>
        </div>
</body>
</html>
