<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdminLeft.ascx.cs" Inherits="Control_AdminLeft" %>
<asp:TreeView ID="TreeView1" runat="server" Font-Names="Microsoft YaHei UI Light" ForeColor="Maroon" ImageSet="Simple" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" Height="100%" Width="110px" style="color: #0066FF; font-family: 微软雅黑; background-color: #FFFF99;">
    <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
    <Nodes>
        <asp:TreeNode Text="读者管理" Value="ReaderMan">
            <asp:TreeNode NavigateUrl="~/Admin/UpdateReaderInfo.aspx" Text="更新信息" Value="Update"></asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/Admin/AddReader.aspx" Text="增加读者" Value="AddReader"></asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/Admin/DeleteReader.aspx" Text="删除读者" Value="DeleteReader"></asp:TreeNode>
        </asp:TreeNode>
        <asp:TreeNode Text="书籍管理" Value="BookMan">
            <asp:TreeNode NavigateUrl="~/Admin/BorrowMan.aspx" Text="借书管理" Value="BorrowMan"></asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/Admin/UpdateBook.aspx" Text="更新图书" Value="Updatebook"></asp:TreeNode>
        </asp:TreeNode>
    </Nodes>
    <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
    <ParentNodeStyle Font-Bold="False" />
    <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
</asp:TreeView>

