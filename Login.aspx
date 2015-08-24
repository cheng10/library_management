<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>


<%@ Register src="Control/ReaderNavi.ascx" tagname="ReaderNavi" tagprefix="uc2" %>

<%@ Register src="Control/Login.ascx" tagname="Login" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            width: 385px;
            height: 42px;
            text-align: center;
        }
        .auto-style5 {
            width: 385px;
            text-align: center;
            background-color: #CCCCFF;
            height: 22px;
        }
        .auto-style6 {
            width: 262px;
            height: 98px;
        }
        .auto-style7 {
            width: 385px;
            text-align: center;
            height: 98px;
        }
        .auto-style8 {
            height: 98px;
        }
        .auto-style13 {
            width: 262px;
            height: 22px;
        }
        .auto-style14 {
            height: 22px;
        }
        .auto-style15 {
            text-align: center;
        }
        .auto-style16 {
            width: 262px;
            height: 241px;
        }
        .auto-style17 {
            width: 385px;
            height: 241px;
        }
        .auto-style18 {
            height: 241px;
        }
        .auto-style19 {
            width: 262px;
            height: 42px;
        }
        .auto-style20 {
            height: 42px;
        }
        .auto-style21 {
            width: 385px;
            text-align: center;
            height: 98px;
            font-family: 微软雅黑;
            font-size: 25pt;
            color: #000000;
        }
        .auto-style22 {
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="auto-style2" style="width: 100%; background-image: url('Images/mf700-06645760.jpg'); height: 665px; background-repeat: no-repeat;">
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style21" style="background-color: #FFFF99">欢迎来到图书管理系统</td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style5" style="background-color: #FFFF99;">
        <uc1:Login ID="Login1" runat="server" />
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style4"><span class="auto-style22">Copyright XuTianLei ChenCheng etc. 2014</span><br class="auto-style22" />
                    <span class="auto-style22">Faculty of Computer Science</span><br class="auto-style22" />
                    <span class="auto-style22">Jinling College&nbsp;</span></td>
                <td class="auto-style20"></td>
            </tr>
        </table>
        <div class="auto-style15">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
