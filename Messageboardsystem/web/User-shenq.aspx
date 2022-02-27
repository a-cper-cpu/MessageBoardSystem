<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User-shenq.aspx.cs" Inherits="web_User_shenq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MessageBoardConnectionString %>" SelectCommand="SELECT [UserName], [contents], [time] FROM [User_Shenq]">
             </asp:SqlDataSource>
             <br />
             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="UserName,time" DataSourceID="SqlDataSource1" GridLines="Horizontal" HorizontalAlign="Center" Width="80%">
                 <AlternatingRowStyle BackColor="#F7F7F7" />
                 <Columns>
                     <asp:BoundField DataField="UserName" HeaderText="用户名" ReadOnly="True" SortExpression="UserName" />
                     <asp:BoundField DataField="contents" HeaderText="申请内容" SortExpression="contents" />
                     <asp:BoundField DataField="time" HeaderText="申请时间" ReadOnly="True" SortExpression="time" />
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
             <br />
             <br />
             <br />
             <asp:Panel ID="Panel1" runat="server" style="text-align:center " Width="100%" HorizontalAlign="Center" >
            <table style="width:100%;" border="1" style="color:#4A3C8C;background-color:#E7E7EF;">
                
               
                <tr>
                    <td  class="auto-style1">
                        <span style="color: navy">申请原因：</span>
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
                            OnClick="btnSave_Click" Text="提交" />
                        &nbsp;
                        <asp:Button ID="btnCancel" runat="server" Text="取消"
                            OnClick="btnCancel_Click" style="height: 27px" />
                    </td>               
                </tr>
            </table>
        </asp:Panel>
        </div>
        <br/>
        <div style="text-align:center;">
            
            <asp:Button ID="Button1" runat="server" Text="查看是否申请成功" OnClick="Button1_Click" /></div>

        <asp:Panel ID="Panel2" runat="server">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MessageBoardConnectionString %>"></asp:SqlDataSource>
            <br />
           <div style="text-align:center;"> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </div>
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" Height="175px" HorizontalAlign="Center" style="margin-bottom: 0px" Width="80%" DataKeyNames="UserName,time">
                <Columns>
                    <asp:BoundField DataField="AdminName" HeaderText="AdminName" SortExpression="AdminName" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" ReadOnly="True" />
                    <asp:BoundField DataField="contents" HeaderText="contents" SortExpression="contents" />
                    <asp:BoundField DataField="Huicontents" HeaderText="Huicontents" SortExpression="Huicontents" />
                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" ReadOnly="True" />
                    <asp:BoundField DataField="Huitime" HeaderText="Huitime" SortExpression="Huitime" />
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
        </asp:Panel>
    </form>
</body>
</html>
