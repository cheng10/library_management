using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_BorrowMan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Level"]==null)
        {
            Response.Write("<script>alert('非法访问');location.href='../Login.aspx'</script>");
        }
       
    }

    protected void btnShow_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = sqlSourceBorrow;
        GridView1.DataBind();
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        int row = ((GridViewRow)((Button)sender).NamingContainer).RowIndex;
        lblReader.Text = GridView1.Rows[row].Cells[2].Text;
        lblBook.Text = GridView1.Rows[row].Cells[3].Text;




        sqlSourceBorrow.Delete();
        sqlSourceReader.Update();
        sqlSourceBook.Update();
        Response.Write("<script>alert('成功')</script>");
        sqlSourceBorrow.DataBind();
        sqlSourceReader.DataBind();
        sqlSourceBook.DataBind();
        GridView1.DataBind();
    }

    protected void btnAddDate_Click(object sender, EventArgs e)
    {
        int row = ((GridViewRow)((Button)sender).NamingContainer).RowIndex;
        lblReader.Text = GridView1.Rows[row].Cells[2].Text;
        lblBook.Text = GridView1.Rows[row].Cells[3].Text;




        sqlSourceBorrow.Update();
       
        Response.Write("<script>alert('成功')</script>");
        sqlSourceBorrow.DataBind();
        GridView1.DataSource = sqlSourceBorrow;
        GridView1.DataBind();
        
    }
    protected void btnQuery_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = sqlSourceQuery;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        sqlSourceBorrow.DataBind();
        GridView1.DataSource = sqlSourceBorrow;
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();    
    }
}