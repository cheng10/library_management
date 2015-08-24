<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="UpdateBook.aspx.cs" Inherits="Admin_UpdateBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style23 {
        }
        .auto-style25 {
            font-size: 40pt;
            color: #FF9900;
            text-align: center;
            font-weight: bold;
        }
        .auto-style26 {
            height: 43px;
            font-size: 40pt;
            color: #FF9900;
            text-align: center;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style23">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Book_ID" Width="100%" CellPadding="4" DataSourceID="sqlSourceBook" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                        <ControlStyle Width="100%" />
                        </asp:CommandField>
                        <asp:BoundField DataField="Book_ID" HeaderText="ID" ReadOnly="True" SortExpression="Book_ID" />
                        <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                        <asp:BoundField DataField="Book_Name" HeaderText="书名" SortExpression="Book_Name" />
                        <asp:BoundField DataField="Book_Author" HeaderText="作者" SortExpression="Book_Author" />
                        <asp:BoundField DataField="Book_Press" HeaderText="出版社" SortExpression="Book_Press" />
                        <asp:BoundField DataField="Book_Price" HeaderText="价格" SortExpression="Book_Price" />
                        <asp:BoundField DataField="Book_Type" HeaderText="类别" SortExpression="Book_Type" />
                        <asp:BoundField DataField="Book_PressDate" HeaderText="出版日期" SortExpression="Book_PressDate" />
                        <asp:BoundField DataField="Book_Des" HeaderText="备注" SortExpression="Book_Des" />
                        <asp:BoundField DataField="Book_IfBorrowed" HeaderText="是否被借" SortExpression="Book_IfBorrowed" />
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
            <td class="auto-style25"></td>
            <td>
                <asp:SqlDataSource ID="sqlSourceBook" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnection %>" DeleteCommand="DELETE FROM [Book] WHERE [Book_ID] = @Book_ID" InsertCommand="INSERT INTO [Book] ([Book_ID], [ISBN], [Book_Name], [Book_Author], [Book_Press], [Book_Price], [Book_Type], [Book_PressDate], [Book_Des], [Book_IfBorrowed]) VALUES (@Book_ID, @ISBN, @Book_Name, @Book_Author, @Book_Press, @Book_Price, @Book_Type, @Book_PressDate, @Book_Des, @Book_IfBorrowed)" SelectCommand="SELECT * FROM [Book]" UpdateCommand="UPDATE [Book] SET [ISBN] = @ISBN, [Book_Name] = @Book_Name, [Book_Author] = @Book_Author, [Book_Press] = @Book_Press, [Book_Price] = @Book_Price, [Book_Type] = @Book_Type, [Book_PressDate] = @Book_PressDate, [Book_Des] = @Book_Des, [Book_IfBorrowed] = @Book_IfBorrowed WHERE [Book_ID] = @Book_ID">
                   
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
                        <asp:Parameter Name="Book_IfBorrowed" Type="String" />
                        <asp:Parameter Name="Book_ID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                </td>
        </tr>
    </table>
</asp:Content>

