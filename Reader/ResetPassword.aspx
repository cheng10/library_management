<%@ Page Title="" Language="C#" MasterPageFile="~/Reader.master" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="Reader_ResetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style20 {
            width: 147px;
        }
        .auto-style21 {
            width: 183px;
        }
        .auto-style22 {
            width: 147px;
            height: 23px;
        }
        .auto-style23 {
            width: 183px;
            height: 23px;
        }
        .auto-style24 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style20" style="background-color: #FFFF99">原密码:</td>
            <td class="auto-style21" style="background-color: #FFFF99">
                <asp:TextBox ID="txtOld" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="background-color: #FFFF99">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20" style="background-color: #FFFF99">新密码:</td>
            <td class="auto-style21" style="background-color: #FFFF99">
                <asp:TextBox ID="txtNew" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="background-color: #FFFF99">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20" style="background-color: #FFFF99">再输一次:</td>
            <td class="auto-style21" style="background-color: #FFFF99">
                <asp:TextBox ID="txtAgain" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="background-color: #FFFF99">
                <asp:CompareValidator ID="Com" runat="server" ControlToCompare="txtNew" ControlToValidate="txtAgain" ErrorMessage="两次密码不符"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20" style="background-color: #FFFF99">&nbsp;</td>
            <td class="auto-style21" style="background-color: #FFFF99">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="修改" />
            </td>
            <td style="background-color: #FFFF99">
                <asp:Label ID="lblcode" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style23"></td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:SqlDataSource ID="sqlSourceLogin" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" DeleteCommand="DELETE FROM [LoginSystem] WHERE [User_ID] = @User_ID" InsertCommand="INSERT INTO [LoginSystem] ([User_ID], [Password]) VALUES (@User_ID, @Password)" SelectCommand="SELECT * FROM [LoginSystem]" UpdateCommand="UPDATE [LoginSystem] SET [Password] = @Password WHERE [User_ID] = @User_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="User_ID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="User_ID" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="txtNew" Name="Password" PropertyName="Text" Type="String" />
                        <asp:SessionParameter Name="User_ID" SessionField="ID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

