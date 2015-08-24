<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddReader.aspx.cs" Inherits="Admin_AddReader" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style23 {
            font-family: "Microsoft YaHei UI";
            color: #3333FF;
        }
        .auto-style24 {
            height: 24px;
            font-family: "Microsoft YaHei UI";
            color: #3333FF;
        }
        .auto-style25 {
            font-family: 微软雅黑;
            height: 19px;
            text-align: center;
            font-weight: bold;
            background-color: #FFFF99;
        }
        .auto-style26 {
            height: 19px;
            background-color: #FFFF99;
        }
        .auto-style27 {
            font-family: 微软雅黑;
            height: 37px;
            text-align: center;
            font-weight: bold;
            background-color: #FFFF99;
        }
        .auto-style28 {
            height: 29px;
            background-color: #FFFF99;
        }
        .auto-style29 {
            font-family: 微软雅黑;
            height: 29px;
            text-align: center;
            font-weight: bold;
            background-color: #FFFF99;
        }
        .auto-style30 {
            font-family: 微软雅黑;
            height: 31px;
            text-align: center;
            font-weight: bold;
            background-color: #FFFF99;
        }
        .auto-style31 {
            height: 31px;
            background-color: #FFFF99;
        }
        .auto-style32 {
            font-family: 微软雅黑;
            height: 35px;
            text-align: center;
            font-weight: bold;
            background-color: #FFFF99;
        }
        .auto-style33 {
            height: 35px;
            background-color: #FFFF99;
        }
        .auto-style34 {
            height: 37px;
            background-color: #FFFF99;
        }
        .auto-style35 {
            height: 24px;
            font-family: 微软雅黑;
            width: 179px;
            text-align: center;
            background-color: #FFFF99;
        }
        .auto-style36 {
            background-color: #FFFF99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="font-size: small">
        <tr>
            <td class="auto-style27">学号/工号：</td>
            <td class="auto-style34">
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style34">
                <asp:CustomValidator ID="cvIfExist" runat="server" ControlToValidate="txtID" ErrorMessage="此读者已存在" OnServerValidate="cvIfExist_ServerValidate"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style35">姓名：</td>
            <td class="auto-style36">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style36">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="必须填写"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style32">性别：</td>
            <td class="auto-style33">
                <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style33">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtGender" ErrorMessage="必须填写"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">联系电话：</td>
            <td class="auto-style31">
                <asp:TextBox ID="TxtPhone" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtPhone" ErrorMessage="必须填写"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">最大可借数目：</td>
            <td class="auto-style28">
                <asp:TextBox ID="txtMaxNumber" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMaxNumber" ErrorMessage="必须填写"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">分配初始密码：</td>
            <td class="auto-style26">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style26">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="必须填写"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36">
                <asp:Label ID="lblPassword" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="auto-style36">
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="增加" />
            </td>
            <td class="auto-style36">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sqlSourcePersonnel" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="sqlSourcePersonnel" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" DeleteCommand="DELETE FROM [Personnel] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Personnel] ([Id], [Name], [Gender], [PhoneNumber]) VALUES (@Id, @Name, @Gender, @PhoneNumber)" SelectCommand="SELECT * FROM [Personnel]" UpdateCommand="UPDATE [Personnel] SET [Name] = @Name, [Gender] = @Gender, [PhoneNumber] = @PhoneNumber WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txtID" Name="Id" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtName" Name="Name" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtGender" Name="Gender" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TxtPhone" Name="PhoneNumber" PropertyName="Text" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="Id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:SqlDataSource ID="sqlSourceReader" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" DeleteCommand="DELETE FROM [Reader] WHERE [Reader_ID] = @Reader_ID" InsertCommand="INSERT INTO [Reader] ([Reader_ID], [Reader_Name], [MaxBook], [NowBook]) VALUES (@Reader_ID, @Reader_Name, @MaxBook, @NowBook)" SelectCommand="SELECT * FROM [Reader]" UpdateCommand="UPDATE [Reader] SET [Reader_Name] = @Reader_Name, [MaxBook] = @MaxBook, [NowBook] = @NowBook WHERE [Reader_ID] = @Reader_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Reader_ID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txtID" Name="Reader_ID" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtName" Name="Reader_Name" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtMaxNumber" Name="MaxBook" PropertyName="Text" Type="Int32" />
                        <asp:Parameter DefaultValue="0" Name="NowBook" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Reader_Name" Type="String" />
                        <asp:Parameter Name="MaxBook" Type="Int32" />
                        <asp:Parameter Name="NowBook" Type="Int32" />
                        <asp:Parameter Name="Reader_ID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:SqlDataSource ID="sqlSourceLogin" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" DeleteCommand="DELETE FROM [LoginSystem] WHERE [User_ID] = @User_ID" InsertCommand="INSERT INTO [LoginSystem] ([User_ID], [Password]) VALUES (@User_ID, @Password)" SelectCommand="SELECT * FROM [LoginSystem]" UpdateCommand="UPDATE [LoginSystem] SET [Password] = @Password WHERE [User_ID] = @User_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="User_ID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txtID" Name="User_ID" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="lblPassword" Name="Password" PropertyName="Text" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="User_ID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

