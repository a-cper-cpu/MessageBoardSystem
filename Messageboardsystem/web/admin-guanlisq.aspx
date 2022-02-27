<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin-guanlisq.aspx.cs" Inherits="web_admin_guanlisq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MessageBoardConnectionString %>" SelectCommand="SELECT [UserName], [contents], [time] FROM [User_Shenq]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" HorizontalAlign="Center" style="margin-bottom: 0px" Width="80%"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="UserName,time">
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="用户名" SortExpression="UserName" ReadOnly="True" />
                    <asp:BoundField DataField="contents" HeaderText="内容" SortExpression="contents" />
                    <asp:BoundField DataField="time" HeaderText="时间" SortExpression="time" ReadOnly="True" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </div>

         <asp:Panel ID="Panel1" runat="server" style="text-align:center " Width="100%" HorizontalAlign="Center" >
            <table style="width:100%;" border="1" style="color:#4A3C8C;background-color:#E7E7EF;">
                <tr>
                    <td class="auto-style2">
                        <span style="color: navy">用户名：</span>
                    </td>
                    <td style="width: 23%">
                        <asp:TextBox ID="FaIDTextBox" runat="server" Width="97%" Text=''>
                        </asp:TextBox>
                    </td>
                   </tr>
            

                <tr>
                    <td style="width: 10%">
                        <span style="color: navy">申请原因：</span>
                    </td>
                    <td style="width: 23%">
                        <asp:TextBox ID="FaTextBox" runat="server" Width="97%" Text='' Height="100px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                
                </tr>
                 <tr>
                    <td class="auto-style2">
                        <span style="color: navy">时间：</span>
                    </td>
                    <td style="width: 23%">
                        <asp:TextBox ID="TimeTextBox" runat="server" Width="97%" Text=''>
                        </asp:TextBox>
                    </td>
                   </tr>
            

                <tr>
                    <td class="auto-style2">
                        <span style="color: navy">回复内容：</span>
                    </td>
                    <td>
                        <asp:TextBox ID="HuiTextBox" runat="server" Width="100%" Text='' Height="100px" TextMode="MultiLine" CssClass="auto-style3"></asp:TextBox>
                    </td>
          
                </tr>
                
                <tr>
                    <td colspan="2" class="auto-style1">
                        <asp:Button ID="Button1" runat="server"
                            OnClick="Button1_Click" Text="批准" />
                        <asp:Button ID="btnSave" runat="server" Text="发送"
                            OnClick="btnSave_Click" style="height: 27px" />
                       
                        <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" style="height: 27px" Text="取消" />
                       
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MessageBoardConnectionString %>" SelectCommand="SELECT * FROM [User_Shenq]  where Huicontents!=''"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" HorizontalAlign="Center" Width="80%" DataKeyNames="UserName,time">
            <Columns>
                <asp:BoundField DataField="AdminName" HeaderText="AdminName" SortExpression="AdminName" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" ReadOnly="True" />
                <asp:BoundField DataField="contents" HeaderText="contents" SortExpression="contents" />
                <asp:BoundField DataField="Huicontents" HeaderText="Huicontents" SortExpression="Huicontents" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" ReadOnly="True" />
                <asp:BoundField DataField="Huitime" HeaderText="Huitime" SortExpression="Huitime" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </form>
</body>
</html>
