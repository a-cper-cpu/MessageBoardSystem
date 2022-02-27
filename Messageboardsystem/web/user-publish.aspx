<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user-publish.aspx.cs" Inherits="web_user_publish" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .auto-style2 {
            width: 562px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MessageBoardConnectionString %>"></asp:SqlDataSource>

            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines="Horizontal" HorizontalAlign="Center" AllowPaging="True" AllowSorting="True" Height="331px" Width="80%"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#F7F7F7"  />
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="用户名" ReadOnly="True" SortExpression="UserName" />
                    <asp:BoundField DataField="Title" HeaderText="标题" SortExpression="Title" />
                    <asp:BoundField DataField="contents" HeaderText="内容" SortExpression="contents" />
                    <asp:BoundField DataField="Pbtime" HeaderText="发布时间" SortExpression="Pbtime" />
                    <asp:BoundField DataField="ReplyNumber" HeaderText="回复次数" SortExpression="ReplyNumber" />
                    <asp:CommandField ShowSelectButton="True" />
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
                    <td class="auto-style2">
                        <span style="color: navy">发布人编号：</span>
                    </td>
                    <td style="width: 23%">
                        <asp:TextBox ID="FaIDTextBox" runat="server" Width="97%" Text=''>
                        </asp:TextBox>
                    </td>
                   </tr>
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
                        <span style="color: navy">发布内容：</span>
                    </td>
                    <td style="width: 23%">
                        <asp:TextBox ID="FaTextBox" runat="server" Width="97%" Text='' Height="100px" TextMode="MultiLine"></asp:TextBox>
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
                        <asp:Button ID="btnSave" runat="server"
                            OnClick="btnSave_Click" Text="发布" />
                        <asp:Button ID="btnCancel" runat="server" Text="取消"
                            OnClick="btnCancel_Click" />
                       
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>

  
        

</body>
</html>
