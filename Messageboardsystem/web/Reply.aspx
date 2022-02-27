<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reply.aspx.cs" Inherits="web_Reply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-image:url(../src/beijing.png);background-repeat:no-repeat;background-size:100% 100%;text-align:center;">
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="标题："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="51px" ReadOnly="True" Width="172px" Font-Bold="True" Font-Size="XX-Large" BorderStyle="Dotted" ForeColor="Black"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="发表人："></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Width="203px" Font-Bold="True" Font-Size="XX-Large" Height="55px" BorderStyle="Dotted"></asp:TextBox>
        &nbsp;<asp:Label ID="Label13" runat="server" Text="时间："></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True" Font-Bold="True" Font-Size="XX-Large" Height="56px" BorderStyle="Dotted"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="内容："></asp:Label>
        <br />
&nbsp;
        <br />
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="133px" ReadOnly="True" TextMode="MultiLine" Width="466px" style="margin-left: 0px" Font-Bold="True" Font-Size="XX-Large" BackColor="#FFCCFF"></asp:TextBox>
        <br />
        <hr/>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="该留言的所有回复如下："></asp:Label>
        <br />
        <br />
&nbsp;<asp:Label ID="Label5" runat="server" Text="内容："></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" Height="149px" TextMode="MultiLine" Width="511px" ReadOnly="True" Font-Bold="True" Font-Size="XX-Large"></asp:TextBox>
        <div>
            <asp:Label ID="Label6" runat="server" Text="回复人："></asp:Label>
            <asp:Label ID="Label7" runat="server" Font-Size="XX-Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="回复时间："></asp:Label>
            <asp:Label ID="Label9" runat="server" Font-Size="XX-Large"></asp:Label>
            <hr/>
            <br />
            <asp:Label ID="Label10" runat="server" Text="发表评论区："></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" Text="内容："></asp:Label>
            <br />
            <asp:TextBox ID="TextBox5" runat="server" Height="166px" TextMode="MultiLine" Width="502px"></asp:TextBox>
            <br />
            <br />
            <br />
        </div>
        <asp:Label ID="Label12" runat="server" Text="回复人："></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Width="206px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="提交" Width="96px" OnClick="Button1_Click" />
    &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 72px" Text="返回前台" />
    </form>
</body>
</html>
