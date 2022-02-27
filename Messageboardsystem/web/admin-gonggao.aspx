<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin-gonggao.aspx.cs" Inherits="web_admin_gonggao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MessageBoardConnectionString %>" DeleteCommand="DELETE FROM [admin_jianyi] WHERE [UserName] = @UserName AND [time] = @time" InsertCommand="INSERT INTO [admin_jianyi] ([UserName], [contents], [time]) VALUES (@UserName, @contents, @time)" SelectCommand="SELECT [UserName], [contents], [time] FROM [admin_jianyi]" UpdateCommand="UPDATE [admin_jianyi] SET [contents] = @contents WHERE [UserName] = @UserName AND [time] = @time">
                <DeleteParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="time" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="contents" Type="String" />
                    <asp:Parameter Name="time" Type="DateTime" />
                    
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="contents" Type="String" />
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="time" Type="DateTime" />
                    
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="80%" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" DataKeyNames="UserName,time">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="管理员名" SortExpression="UserName" ReadOnly="True" />
                    <asp:BoundField DataField="contents" HeaderText="公告内容" SortExpression="contents" />
                    <asp:BoundField DataField="time" HeaderText="发布时间" SortExpression="time" ReadOnly="True" />
                    <asp:CommandField ShowDeleteButton="True" />
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

         <asp:Panel ID="Panel1" runat="server" style="text-align:center " Width="100%" HorizontalAlign="Center" >
            <table style="width:100%;" border="1" style="color:#4A3C8C;background-color:#E7E7EF;">
              
                 

               
                <tr>
                    <td style="width: 10%">
                        <span style="color: navy">公告内容：</span>
                    </td>
                    <td style="width: 23%">
                        <asp:TextBox ID="contentsTextBox" runat="server" Width="97%" Text='' Height="100px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                
                </tr>
                
                
                <tr>
                   
                    <td colspan="2">
                        <asp:Button ID="btnSave" runat="server"
                            OnClick="btnSave_Click" Text="发送" />
                        &nbsp;
                        <asp:Button ID="btnCancel" runat="server" Text="取消"
                            OnClick="btnCancel_Click" />
                       
                    </td>
                </tr>
            </table>
        </asp:Panel>

    </form>
</body>
</html>
