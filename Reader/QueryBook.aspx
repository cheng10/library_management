<%@ Page Title="" Language="C#" MasterPageFile="~/Reader.master" AutoEventWireup="true" CodeFile="QueryBook.aspx.cs" Inherits="Reader_QueryBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style20 {
    }
    .auto-style21 {
        width: 433px;
    }
        .auto-style22 {
            width: 433px;
            height: 59px;
        }
        .auto-style23 {
            height: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="width: 94%">
        <tr>
            <td class="auto-style22" style="background-color: #FFFF99">
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtQuery" runat="server" style="margin-top: 0px; margin-left: 0px;" Width="360px" Height="29px" ToolTip="请输入书记描述"></asp:TextBox>
            </td>
            <td class="auto-style23">
                <asp:Button ID="btnQuery" runat="server" Text="查询" Font-Size="Large" />
            </td>
        </tr>
        <tr>
            <td class="auto-style20" colspan="2" style="background-color: #FFFF99">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Book_ID" DataSourceID="sqlSourceBook" Width="816px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" style="background-color: #FFFF99">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Book_ID" HeaderText="ID" ReadOnly="True" SortExpression="Book_ID" />
                        <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                        <asp:BoundField DataField="Book_Name" HeaderText="书名" SortExpression="Book_Name" />
                        <asp:BoundField DataField="Book_Author" HeaderText="作者" SortExpression="Book_Author" />
                        <asp:BoundField DataField="Book_IfBorrowed" HeaderText="是否可借" SortExpression="Book_IfBorrowed" />
                        <asp:BoundField DataField="Book_Press" HeaderText="出版社" SortExpression="Book_Press" />

                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="btnBorrow" runat="server" CausesValidation="false" CommandName="Borrow" OnClick="btnBorrow_Click" Text="借阅" />
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>

            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">
                <asp:SqlDataSource ID="sqlSourceReader" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" DeleteCommand="DELETE FROM [Reader] WHERE [Reader_ID] = @Reader_ID" InsertCommand="INSERT INTO [Reader] ([Reader_ID], [Reader_Name], [MaxBook], [NowBook]) VALUES (@Reader_ID, @Reader_Name, @MaxBook, @NowBook)" SelectCommand="SELECT * FROM [Reader]" UpdateCommand="UPDATE [Reader] SET  [NowBook] = NowBook+1 WHERE [Reader_ID] = @Reader_ID">
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
            <td class="auto-style21">
                <asp:SqlDataSource ID="sqlSourceBook" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" SelectCommand="SELECT [Book_ID], [ISBN], [Book_Name], [Book_Author], [Book_Press], [Book_IfBorrowed] FROM [Book] WHERE (([Book_Name] LIKE '%' + @Book_Name + '%') AND ([Book_IfBorrowed] = @Book_IfBorrowed))" DeleteCommand="DELETE FROM [Book] WHERE [Book_ID] = @Book_ID" InsertCommand="INSERT INTO [Book] ([Book_ID], [ISBN], [Book_Name], [Book_Author], [Book_Press], [Book_IfBorrowed]) VALUES (@Book_ID, @ISBN, @Book_Name, @Book_Author, @Book_Press, @Book_IfBorrowed)" UpdateCommand="UPDATE [Book] SET [Book_IfBorrowed] = @Book_IfBorrowed WHERE [Book_ID] = @Book_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Book_ID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Book_ID" Type="String" />
                        <asp:Parameter Name="ISBN" Type="String" />
                        <asp:Parameter Name="Book_Name" Type="String" />
                        <asp:Parameter Name="Book_Author" Type="String" />
                        <asp:Parameter Name="Book_Press" Type="String" />
                        <asp:Parameter Name="Book_IfBorrowed" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtQuery" Name="Book_Name" PropertyName="Text" Type="String" />
                        <asp:Parameter DefaultValue="0" Name="Book_IfBorrowed" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ISBN" Type="String" />
                        <asp:Parameter Name="Book_Name" Type="String" />
                        <asp:Parameter Name="Book_Author" Type="String" />
                        <asp:Parameter Name="Book_Press" Type="String" />
                        <asp:Parameter DefaultValue="1" Name="Book_IfBorrowed" Type="String" />
                        <asp:ControlParameter ControlID="lbltemp" Name="Book_ID" PropertyName="Text" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:SqlDataSource ID="sqlSourceBorrow" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" DeleteCommand="DELETE FROM [BorrowBook] WHERE [Reader_ID] = @Reader_ID AND [Book_ID] = @Book_ID" InsertCommand="INSERT INTO [BorrowBook] ([Reader_ID], [Book_ID], [BorrowDate], [Deadline]) VALUES (@Reader_ID, @Book_ID, CONVERT(date,getdate(),120), CONVERT(date,dateadd(mm,3,getdate()),120))" SelectCommand="SELECT * FROM [BorrowBook]" UpdateCommand="UPDATE [BorrowBook] SET [BorrowDate] = @BorrowDate, [Deadline] = @Deadline WHERE [Reader_ID] = @Reader_ID AND [Book_ID] = @Book_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Reader_ID" Type="String" />
                        <asp:Parameter Name="Book_ID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:SessionParameter Name="Reader_ID" SessionField="ID" Type="String" />
                        <asp:ControlParameter ControlID="lbltemp" Name="Book_ID" PropertyName="Text" Type="String" />
                        <asp:Parameter DbType="Date" Name="BorrowDate" />
                        <asp:Parameter DbType="Date" Name="Deadline" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="BorrowDate" />
                        <asp:Parameter DbType="Date" Name="Deadline" />
                        <asp:Parameter Name="Reader_ID" Type="String" />
                        <asp:Parameter Name="Book_ID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

