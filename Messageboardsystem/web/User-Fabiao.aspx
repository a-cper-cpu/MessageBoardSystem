<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User-Fabiao.aspx.cs" Inherits="web_User_Fabiao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MessageBoardConnectionString %>" SelectCommand="SELECT * FROM [UserPublicaTable]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="UserName,Pbtime" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="80%">
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="用户名" ReadOnly="True" SortExpression="UserName" />
                    <asp:BoundField DataField="Title" HeaderText="标题" SortExpression="Title" />
                    <asp:BoundField DataField="contents" HeaderText="发布内容" SortExpression="contents" />
                    <asp:BoundField DataField="Pbtime" HeaderText="发布时间" ReadOnly="True" SortExpression="Pbtime" />
                    <asp:BoundField DataField="ReplyNumber" HeaderText="回复数" SortExpression="ReplyNumber" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <br />
        </div>

         <asp:Panel ID="Panel1" runat="server" style="text-align:center " Width="100%" HorizontalAlign="Center" >
            <table style="width:100%;" border="1" style="color:#4A3C8C;background-color:#E7E7EF;">
                
                <tr>
                    <td class="auto-style2">
                        <span style="color: navy">标题：</span>
                    </td>
                    </tr>
                        <tr>
                    <td style="width: 23%">
                        <asp:TextBox ID="TitleTextBox" runat="server" Width="97%" Text=''>
                        </asp:TextBox>
                    </td>
                   </tr>

                
                <tr>
                    <td class="auto-style2">
                        <span style="color: navy">回复内容：</span>
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
                            OnClick="btnSave_Click" Text="发布" />
                        &nbsp;&nbsp;
                        <input id="Reset1" type="reset" value="重置" />
                       
                    </td>
                </tr>
            </table>
        </asp:Panel>


    </form>
</body>
</html>
