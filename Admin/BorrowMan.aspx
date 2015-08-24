<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="BorrowMan.aspx.cs" Inherits="Admin_BorrowMan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style23 {
            width: 532px;
        }
        .auto-style24 {
        }
    .auto-style25 {
        width: 532px;
        height: 34px;
            background-color: #FFFF99;
        }
    .auto-style26 {
        height: 34px;
            background-color: #FFFF99;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="width: 100%">
        <tr>
            <td class="auto-style25">
                &nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="TextBox1" runat="server" Width="80%" align="center"></asp:TextBox>
            </td>
            <td class="auto-style26">
                <asp:Button ID="btnQuery" runat="server" Text="查询" Width="100px" OnClick="btnQuery_Click" />
                &nbsp;
                <asp:Button ID="btnShow" runat="server" Text="全部" Width="100px" OnClick="btnShow_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style24" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="btnDelete" runat="server" CausesValidation="false" CommandName="" OnClick="btnDelete_Click" Text="删除" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="btnAddDate" runat="server" CausesValidation="false" CommandName="" OnClick="btnAddDate_Click" Text="延期" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">
                <asp:Label ID="lblReader" runat="server" Visible="False" style="font-family: 微软雅黑; font-size: small"></asp:Label>
                <asp:Label ID="lblBook" runat="server" Visible="False" style="font-size: medium; font-weight: 400; font-family: 微软雅黑"></asp:Label>
                <asp:SqlDataSource ID="sqlSourceQuery" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" DeleteCommand="DELETE FROM [BorrowBook] WHERE [Reader_ID] = @Reader_ID AND [Book_ID] = @Book_ID" InsertCommand="INSERT INTO [BorrowBook] ([Reader_ID], [Book_ID], [BorrowDate], [Deadline]) VALUES (@Reader_ID, @Book_ID, @BorrowDate, @Deadline)" SelectCommand="SELECT * FROM [BorrowBook] WHERE ([Reader_ID] = @Reader_ID)" UpdateCommand="UPDATE [BorrowBook] SET [BorrowDate] = @BorrowDate, [Deadline] = @Deadline WHERE [Reader_ID] = @Reader_ID AND [Book_ID] = @Book_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Reader_ID" Type="String" />
                        <asp:Parameter Name="Book_ID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Reader_ID" Type="String" />
                        <asp:Parameter Name="Book_ID" Type="String" />
                        <asp:Parameter DbType="Date" Name="BorrowDate" />
                        <asp:Parameter DbType="Date" Name="Deadline" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Reader_ID" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="BorrowDate" />
                        <asp:Parameter DbType="Date" Name="Deadline" />
                        <asp:Parameter Name="Reader_ID" Type="String" />
                        <asp:Parameter Name="Book_ID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:SqlDataSource ID="sqlSourceReader" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" DeleteCommand="DELETE FROM [Reader] WHERE [Reader_ID] = @Reader_ID" InsertCommand="INSERT INTO [Reader] ([Reader_ID], [Reader_Name], [MaxBook], [NowBook]) VALUES (@Reader_ID, @Reader_Name, @MaxBook, @NowBook)" SelectCommand="SELECT * FROM [Reader]" UpdateCommand="UPDATE [Reader] SET [NowBook] = NowBook-1 WHERE [Reader_ID] = @Reader_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Reader_ID" Type="String" />
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
                        <asp:ControlParameter ControlID="lblReader" Name="Reader_ID" PropertyName="Text" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">
                <asp:SqlDataSource ID="sqlSourceBook" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" DeleteCommand="DELETE FROM [Book] WHERE [Book_ID] = @Book_ID" InsertCommand="INSERT INTO [Book] ([Book_ID], [ISBN], [Book_Name], [Book_Author], [Book_Press], [Book_Price], [Book_Type], [Book_PressDate], [Book_Des], [Book_IfBorrowed]) VALUES (@Book_ID, @ISBN, @Book_Name, @Book_Author, @Book_Press, @Book_Price, @Book_Type, @Book_PressDate, @Book_Des, @Book_IfBorrowed)" SelectCommand="SELECT * FROM [Book]" UpdateCommand="UPDATE [Book] SET [Book_IfBorrowed] = @Book_IfBorrowed WHERE [Book_ID] = @Book_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Book_ID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Book_ID" Type="String" />
                        <asp:Parameter Name="ISBN" Type="String" />
                        <asp:Parameter Name="Book_Name" Type="String" />
                        <asp:Parameter Name="Book_Author" Type="String" />
                        <asp:Parameter Name="Book_Press" Type="String" />
                        <asp:Parameter Name="Book_Price" Type="Decimal" />
                        <asp:Parameter Name="Book_Type" Type="String" />
                        <asp:Parameter Name="Book_PressDate" Type="String" />
                        <asp:Parameter Name="Book_Des" Type="String" />
                        <asp:Parameter Name="Book_IfBorrowed" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ISBN" Type="String" />
                        <asp:Parameter Name="Book_Name" Type="String" />
                        <asp:Parameter Name="Book_Author" Type="String" />
                        <asp:Parameter Name="Book_Press" Type="String" />
                        <asp:Parameter Name="Book_Price" Type="Decimal" />
                        <asp:Parameter Name="Book_Type" Type="String" />
                        <asp:Parameter Name="Book_PressDate" Type="String" />
                        <asp:Parameter Name="Book_Des" Type="String" />
                        <asp:Parameter DefaultValue="0" Name="Book_IfBorrowed" Type="String" />
                        <asp:ControlParameter ControlID="lblBook" DefaultValue="" Name="Book_ID" PropertyName="Text" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:SqlDataSource ID="sqlSourceBorrow" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" DeleteCommand="DELETE FROM [BorrowBook] WHERE [Reader_ID] = @Reader_ID AND [Book_ID] = @Book_ID" InsertCommand="INSERT INTO [BorrowBook] ([Reader_ID], [Book_ID], [BorrowDate], [Deadline]) VALUES (@Reader_ID, @Book_ID, @BorrowDate, @Deadline)" SelectCommand="SELECT * FROM [BorrowBook]" UpdateCommand="UPDATE BorrowBook SET Deadline = CONVERT (date, DATEADD(mm, 1, CONVERT(datetime,Deadline)), 120) WHERE (Reader_ID = @Reader_ID) AND (Book_ID = @Book_ID)">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="lblReader" Name="Reader_ID" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="lblBook" Name="Book_ID" PropertyName="Text" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Reader_ID" Type="String" />
                        <asp:Parameter Name="Book_ID" Type="String" />
                        <asp:Parameter DbType="Date" Name="BorrowDate" />
                        <asp:Parameter DbType="Date" Name="Deadline" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="BorrowDate" />
                        <asp:Parameter DbType="Date" Name="Deadline" />
                        <asp:ControlParameter ControlID="lblReader" Name="Reader_ID" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="lblBook" Name="Book_ID" PropertyName="Text" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

