<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login.ascx.cs" Inherits="Wizard_Login" %>
<style type="text/css">
    .auto-style1 {
        font-family: "Microsoft YaHei UI";
    }
    .auto-style2 {
        font-family: 微软雅黑;
    }
</style>
<body style="font-family: 微软雅黑">
<p style="width: 396px; height: 225px; margin-top: 8px;">
    <span class="auto-style2">登陆类别</span><span class="auto-style1">：&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:DropDownList ID="ddpType" runat="server" Height="20px" Width="78px">
        <asp:ListItem Value="Reader">读者</asp:ListItem>
        <asp:ListItem Value="Admin">管理员</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    用户名</span>:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
    <br />
    <br />
    <span class="auto-style1">密码</span>:&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPassword" runat="server" style="margin-bottom: 0px" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;
    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="登陆" style="font-family: 'Microsoft YaHei UI'; margin-left: 1px" Width="85px" />
</p>



