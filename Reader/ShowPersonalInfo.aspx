<%@ Page Title="" Language="C#" MasterPageFile="~/Reader.master" AutoEventWireup="true" CodeFile="ShowPersonalInfo.aspx.cs" Inherits="Reader_ShowPersonalInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style20 {}
        .auto-style21 {
            font-family: "Microsoft YaHei UI";
            font-weight: bold;
            width: 110px;
        }
        .auto-style22 {
            height: 24px;
            font-family: "Microsoft YaHei UI";
            font-weight: bold;
            width: 110px;
        }
        .auto-style23 {
            width: 296px;
        }
        .auto-style24 {
            width: 56px;
        }
        .auto-style25 {
            font-family: "Microsoft YaHei UI";
            font-weight: bold;
            width: 142px;
        }
        .auto-style27 {
            width: 142px;
        }
        .auto-style28 {
            width: 110px;
        }
        .auto-style32 {
            width: 296px;
            font-size: 40pt;
            color: #FF9900;
            text-align: center;
            font-weight: bold;
        }
        .auto-style36 {
            font-family: "Microsoft YaHei UI";
            font-weight: bold;
            width: 110px;
            font-size: small;
        }
        .auto-style37 {
            font-family: "Microsoft YaHei UI";
            font-weight: bold;
            width: 110px;
            height: 11px;
        }
        .auto-style38 {
            width: 56px;
            height: 11px;
        }
        .auto-style39 {
            width: 142px;
            height: 11px;
        }
        .auto-style40 {
            width: 296px;
            font-size: 40pt;
            color: #FF9900;
            text-align: center;
            font-weight: bold;
            height: 11px;
        }
        .auto-style41 {
            font-family: "Microsoft YaHei UI";
            font-weight: bold;
            width: 110px;
            height: 16px;
        }
        .auto-style42 {
            width: 56px;
            height: 16px;
        }
        .auto-style43 {
            width: 142px;
            height: 16px;
        }
        .auto-style44 {
            width: 296px;
            font-size: 40pt;
            color: #FF9900;
            text-align: center;
            font-weight: bold;
            height: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style36" style="background-color: #FFFF99">ID：</td>
        <td class="auto-style24" style="background-color: #FFFF99">
            <asp:Label ID="lblID" runat="server" Font-Names="Microsoft YaHei UI Light" ForeColor="#0066FF"></asp:Label>
        </td>
        <td class="auto-style25" style="background-color: #FFFF99">已借书数目：</td>
        <td class="auto-style32" style="background-color: #FFFF99">
            <asp:Label ID="lblBookNum" runat="server" Font-Names="Microsoft YaHei UI Light" ForeColor="#0066FF"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style21" style="background-color: #FFFF99">姓名：</td>
        <td class="auto-style24" style="background-color: #FFFF99">
            <asp:Label ID="lblName" runat="server" Font-Names="Microsoft YaHei UI Light" ForeColor="#0066FF"></asp:Label>
        </td>
        <td class="auto-style25" style="background-color: #FFFF99">借书数目上限：</td>
        <td class="auto-style32" style="background-color: #FFFF99">
            <asp:Label ID="lblMaxNum" runat="server" Font-Names="Microsoft YaHei UI Light" ForeColor="#0066FF"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style37" style="background-color: #FFFF99">性别：</td>
        <td class="auto-style38" style="background-color: #FFFF99">
            <asp:Label ID="lblGender" runat="server" Font-Names="Microsoft YaHei UI Light" ForeColor="#0066FF"></asp:Label>
        </td>
        <td class="auto-style39" style="background-color: #FFFF99"></td>
        <td class="auto-style40" style="background-color: #FFFF99"></td>
    </tr>
    <tr>
        <td class="auto-style41" style="background-color: #FFFF99">联系方式：</td>
        <td class="auto-style42" style="background-color: #FFFF99">
            <asp:Label ID="lblPhoneNum" runat="server" Font-Names="Microsoft YaHei UI Light" ForeColor="#0066FF"></asp:Label>
        </td>
        <td class="auto-style43" style="background-color: #FFFF99"></td>
        <td class="auto-style44" style="background-color: #FFFF99"></td>
    </tr>
    <tr>
        <td class="auto-style28"></td>
        <td class="auto-style24"></td>
        <td class="auto-style27"></td>
        <td class="auto-style23"></td>
    </tr>
    <tr>
        <td class="auto-style20" colspan="2">
            <asp:GridView ID="gvPersonnel" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlSourcePersonnel" Visible="False">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                </Columns>
            </asp:GridView>
        </td>
        <td class="auto-style20" colspan="2">
            <asp:GridView ID="gvReader" runat="server" AutoGenerateColumns="False" DataKeyNames="Reader_ID" DataSourceID="SqlSourceReader" Visible="False">
                <Columns>
                    <asp:BoundField DataField="Reader_ID" HeaderText="Reader_ID" ReadOnly="True" SortExpression="Reader_ID" />
                    <asp:BoundField DataField="Reader_Name" HeaderText="Reader_Name" SortExpression="Reader_Name" />
                    <asp:BoundField DataField="MaxBook" HeaderText="MaxBook" SortExpression="MaxBook" />
                    <asp:BoundField DataField="NowBook" HeaderText="NowBook" SortExpression="NowBook" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:SqlDataSource ID="SqlSourcePersonnel" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" SelectCommand="SELECT * FROM [Personnel] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:SessionParameter Name="Id" SessionField="ID" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td colspan="2">
            <asp:SqlDataSource ID="SqlSourceReader" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" SelectCommand="SELECT * FROM [Reader] WHERE ([Reader_ID] = @Reader_ID)">
                <SelectParameters>
                    <asp:SessionParameter Name="Reader_ID" SessionField="ID" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

