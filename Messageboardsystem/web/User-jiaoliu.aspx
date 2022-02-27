<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User-jiaoliu.aspx.cs" Inherits="web_User_jiaoliu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MessageBoardConnectionString %>"></asp:SqlDataSource>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="80%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="发送者" SortExpression="UserName" />
                    <asp:BoundField DataField="FriendName" HeaderText="接收者" SortExpression="FriendName" />
                    <asp:BoundField DataField="contents" HeaderText="消息内容" SortExpression="contents" />
                    <asp:BoundField DataField="time" HeaderText="发送时间" SortExpression="time" />
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
                        <span style="color: navy">用户编号：</span>
                    </td>
                    <td style="width: 23%">
                        <asp:TextBox ID="UseridTextBox" runat="server" Width="97%" Text=''>
                        </asp:TextBox>
                    </td>
                   </tr>

               
                <tr>
                    <td style="width: 10%">
                        <span style="color: navy">发送内容：</span>
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
