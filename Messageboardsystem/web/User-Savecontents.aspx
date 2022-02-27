<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User-Savecontents.aspx.cs" Inherits="web_User_Savecontents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MessageBoardConnectionString %>" SelectCommand="SELECT [Title], [contents], [Pbtime] FROM [UserPublicaTable]">
        </asp:SqlDataSource>
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="80%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="contents" HeaderText="contents" SortExpression="contents" />
                    <asp:BoundField DataField="Pbtime" HeaderText="Pbtime" SortExpression="Pbtime" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>

         <asp:Panel ID="Panel1" runat="server" style="text-align:center " Width="100%" HorizontalAlign="Center" >
            <table style="width:100%;" border="1" style="color:#4A3C8C;background-color:#E7E7EF;">
                <tr>
                    <td class="auto-style2">
                        <span style="color: navy">标题：</span>
                    </td>
                    <td style="width: 23%">
                        <asp:TextBox ID="TitleTextBox" runat="server" Width="97%" Text=''>
                        </asp:TextBox>
                    </td>
                   </tr>
                <tr>
                    <td style="width: 10%">
                        <span style="color: navy">内容：</span>
                    </td>
                    <td style="width: 23%">
                        <asp:TextBox ID="contentsTextBox" runat="server" Width="97%" Text='' Height="100px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                
                </tr>

                 <tr>
                    <td class="auto-style2">
                        <span style="color: navy">时间(只读)：</span>
                    </td>
                    <td style="width: 23%">
                        <asp:TextBox ID="TimeTextBox" runat="server" Width="97%" Text=''>
                        </asp:TextBox>
                    </td>
                   </tr>
                
                
                <tr>
                    <td colspan="2" class="auto-style1">
                         <asp:Button ID="Button1" runat="server"
                            OnClick="btnSave_Click" Text="保存" />

                        <asp:Button ID="btnSave" runat="server"
                            OnClick="btnPublish_Click" Text="发布" />
                        <asp:Button ID="btnCancel" runat="server" Text="取消"
                            OnClick="btnCancel_Click" />
                       
                    </td>
                </tr>
            </table>
        </asp:Panel>

    </form>
</body>
</html>
