<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ReaderNavi.ascx.cs" Inherits="Control_ReaderNavi" %>

<style type="text/css">
    .auto-style1 {
        font-family: 微软雅黑;
    }
    .auto-style2 {
        font-family: 微软雅黑;
        font-size: medium;
    }
</style>

<p style="width: 823px; margin-left: 0px; margin-bottom: 19px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style1"> </span>
            <asp:HyperLink ID="hpQuery" runat="server" Font-Names="Microsoft YaHei UI Light" Font-Size="Small"  NavigateUrl="~/Reader/QueryBook.aspx" CssClass="auto-style2">图书查询</asp:HyperLink>
    <span class="auto-style2">&nbsp;&nbsp;
            </span>
            <asp:HyperLink ID="hpBackBook" runat="server" Font-Names="Microsoft YaHei UI Light" Font-Size="Small" NavigateUrl="~/Reader/BackBook.aspx" CssClass="auto-style2">借书归还</asp:HyperLink>
    <span class="auto-style2">&nbsp;&nbsp;
            </span>
            <asp:HyperLink ID="hpShowPersonalInfo" runat="server" Font-Names="Microsoft YaHei UI Light" Font-Size="Small" NavigateUrl="~/Reader/ShowPersonalInfo.aspx" CssClass="auto-style2">个人信息</asp:HyperLink>
    <span class="auto-style2">&nbsp;&nbsp;
            </span>
            <asp:HyperLink ID="hpResetPassword" runat="server" Font-Size="Small" NavigateUrl="~/Reader/ResetPassword.aspx" Font-Names="Microsoft YaHei UI Light" CssClass="auto-style2">修改密码</asp:HyperLink>
    <span class="auto-style2">&nbsp;&nbsp;
            </span>
            <asp:HyperLink ID="hpLogout" runat="server" Font-Names="Microsoft YaHei UI Light" Font-Size="Small" NavigateUrl="~/Reader/Logout.aspx" CssClass="auto-style2">退出登录</asp:HyperLink>
        </p>



