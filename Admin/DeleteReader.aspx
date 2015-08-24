<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="DeleteReader.aspx.cs" Inherits="Admin_DeleteReader" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 115px;
        }
        .auto-style25 {
        }
        .auto-style26 {
        }
        .auto-style27 {
            width: 95px;
        }
        .auto-style28 {
            width: 578px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="font-size: medium; font-family: 微软雅黑">
        <tr>
            <td class="auto-style28">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" align="centre" Width="80%"></asp:TextBox>
            </td>
            <td class="auto-style27">
                <asp:Button ID="btnQuery" runat="server" Text="查找" OnClick="btnQuery_Click" Width="88px" />
            </td>
            <td class="auto-style24">
                <asp:Button ID="btnShow" runat="server" Text="全部" OnClick="btnShow_Click" Width="88px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style25" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Reader_ID" ForeColor="Black" GridLines="Vertical" OnPageIndexChanging="GridView1_PageIndexChanging" Width="915px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Reader_ID" HeaderText="Reader_ID" ReadOnly="True" SortExpression="Reader_ID" />
                        <asp:BoundField DataField="Reader_Name" HeaderText="Reader_Name" SortExpression="Reader_Name" />
                        <asp:BoundField DataField="MaxBook" HeaderText="MaxBook" SortExpression="MaxBook" />
                        <asp:BoundField DataField="NowBook" HeaderText="NowBook" SortExpression="NowBook" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="btnDelete" runat="server" CausesValidation="false" CommandName="" OnClick="btnDelete_Click" Text="删除" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">
                <asp:Label ID="lbltemp" runat="server" Visible="False"></asp:Label>
                <asp:SqlDataSource ID="sqlSourceQuery" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" SelectCommand="SELECT * FROM [Reader] WHERE ([Reader_ID] = @Reader_ID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Reader_ID" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style26" colspan="2">
                <asp:SqlDataSource ID="sqlSourcelLogin" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" DeleteCommand="DELETE FROM [LoginSystem] WHERE [User_ID] = @User_ID" InsertCommand="INSERT INTO [LoginSystem] ([User_ID], [Password]) VALUES (@User_ID, @Password)" SelectCommand="SELECT * FROM [LoginSystem]" UpdateCommand="UPDATE [LoginSystem] SET [Password] = @Password WHERE [User_ID] = @User_ID">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="lbltemp" Name="User_ID" PropertyName="Text" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="User_ID" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="User_ID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">
                <asp:SqlDataSource ID="sqlSourcePersonnel" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" DeleteCommand="DELETE FROM [Personnel] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Personnel] ([Id], [Name], [Gender], [PhoneNumber]) VALUES (@Id, @Name, @Gender, @PhoneNumber)" SelectCommand="SELECT * FROM [Personnel]" UpdateCommand="UPDATE [Personnel] SET [Name] = @Name, [Gender] = @Gender, [PhoneNumber] = @PhoneNumber WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="lbltemp" Name="Id" PropertyName="Text" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="Id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style26" colspan="2">
                <asp:SqlDataSource ID="sqlSourceReader" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" DeleteCommand="DELETE FROM [Reader] WHERE [Reader_ID] = @Reader_ID" InsertCommand="INSERT INTO [Reader] ([Reader_ID], [Reader_Name], [MaxBook], [NowBook]) VALUES (@Reader_ID, @Reader_Name, @MaxBook, @NowBook)" SelectCommand="SELECT * FROM [Reader]" UpdateCommand="UPDATE [Reader] SET [Reader_Name] = @Reader_Name, [MaxBook] = @MaxBook, [NowBook] = @NowBook WHERE [Reader_ID] = @Reader_ID">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="lbltemp" Name="Reader_ID" PropertyName="Text" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Reader_ID" Type="String" />
                        <asp:Parameter Name="Reader_Name" Type="String" />
                        <asp:Parameter Name="MaxBook" Type="Int32" />
                        <asp:Parameter Name="NowBook" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Reader_Name" Type="String" />
                        <asp:Parameter Name="MaxBook" Type="Int32" />
                        <asp:Parameter Name="NowBook" Type="Int32" />
                        <asp:Parameter Name="Reader_ID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

