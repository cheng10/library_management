<%@ Page Title="" Language="C#" MasterPageFile="~/Reader.master" AutoEventWireup="true" CodeFile="BackBook.aspx.cs" Inherits="Reader_BackBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="background-color: #FFFF99">
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Reader_ID,Book_ID" DataSourceID="sqlSourceBorrow" Width="790px">
                    <Columns>
                        <asp:BoundField DataField="Reader_ID" HeaderText="Reader_ID" ReadOnly="True" SortExpression="Reader_ID" />
                        <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" ReadOnly="True" SortExpression="Book_ID" />
                        <asp:BoundField DataField="BorrowDate" HeaderText="BorrowDate" SortExpression="BorrowDate" />
                        <asp:BoundField DataField="Deadline" HeaderText="Deadline" SortExpression="Deadline" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="return" OnClick="Button1_Click" Text="还书" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
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
                        <asp:SessionParameter Name="Reader_ID" SessionField="ID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:Label ID="lbltemp" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="sqlSourceBorrow" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" DeleteCommand="DELETE FROM [BorrowBook] WHERE [Reader_ID] = @Reader_ID AND [Book_ID] = @Book_ID" InsertCommand="INSERT INTO [BorrowBook] ([Reader_ID], [Book_ID], [BorrowDate], [Deadline]) VALUES (@Reader_ID, @Book_ID, @BorrowDate, @Deadline)" SelectCommand="SELECT * FROM [BorrowBook] WHERE ([Reader_ID] = @Reader_ID)" UpdateCommand="UPDATE [BorrowBook] SET [BorrowDate] = @BorrowDate, [Deadline] = @Deadline WHERE [Reader_ID] = @Reader_ID AND [Book_ID] = @Book_ID">
                    <DeleteParameters>
                        <asp:SessionParameter Name="Reader_ID" SessionField="ID" Type="String" />
                        <asp:ControlParameter ControlID="lbltemp" Name="Book_ID" PropertyName="Text" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Reader_ID" Type="String" />
                        <asp:Parameter Name="Book_ID" Type="String" />
                        <asp:Parameter DbType="Date" Name="BorrowDate" />
                        <asp:Parameter DbType="Date" Name="Deadline" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="Reader_ID" SessionField="ID" Type="String" />
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
                <asp:SqlDataSource ID="sqlSourceBook" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" DeleteCommand="DELETE FROM [Book] WHERE [Book_ID] = @Book_ID" InsertCommand="INSERT INTO [Book] ([Book_ID], [ISBN], [Book_Name], [Book_Author], [Book_Press], [Book_Price], [Book_Type], [Book_PressDate], [Book_Des], [Book_IfBorrowed]) VALUES (@Book_ID, @ISBN, @Book_Name, @Book_Author, @Book_Press, @Book_Price, @Book_Type, @Book_PressDate, @Book_Des, @Book_IfBorrowed)" SelectCommand="SELECT * FROM [Book]" UpdateCommand="UPDATE [Book] SET  [Book_IfBorrowed] = @Book_IfBorrowed WHERE [Book_ID] = @Book_ID">
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
                        <asp:ControlParameter ControlID="lbltemp" DefaultValue="" Name="Book_ID" PropertyName="Text" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

