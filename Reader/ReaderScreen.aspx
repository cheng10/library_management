<%@ Page Title="读者主界面" Language="C#" MasterPageFile="~/Reader.master" AutoEventWireup="true" CodeFile="ReaderScreen.aspx.cs" Inherits="Reader_ReaderScreen" %>

<%@ Register src="../Control/Login.ascx" tagname="Login" tagprefix="uc1" %>

<%@ Register src="../Control/ReaderNavi.ascx" tagname="ReaderNavi" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style19 {
        width: 87px;
    }
    .auto-style21 {
        width: 342px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style1" style="height: 72px; width: 99%">
    <tr>
        <td class="auto-style21">
            <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Names="微软雅黑" Text="欢迎进入图书馆管理系统，请点击导航条进入相关功能界面" Width="826px" Height="57px" style="font-weight: 400; font-style: normal; font-size: x-large; background-color: #FFFF99"></asp:Label>
        </td>
    </tr>
</table>
<br />
</asp:Content>

