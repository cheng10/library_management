using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_DeleteReader : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Level"] == null)
        {
            Response.Write("<script>alert('非法访问');location.href='../Login.aspx'</script>");
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        int row = ((GridViewRow)((Button)sender).NamingContainer).RowIndex;
        lbltemp.Text = GridView1.Rows[row].Cells[0].Text;
        sqlSourcelLogin.Delete();
        sqlSourcePersonnel.Delete();
        sqlSourceReader.Delete();
        Response.Write("<script>alert('成功')</script>");
        sqlSourcePersonnel.DataBind();
        GridView1.DataBind();

    }
    protected void btnQuery_Click(object sender, EventArgs e)
    {
        sqlSourceQuery.DataBind();
        GridView1.DataSource = sqlSourceQuery;
        GridView1.DataBind();

    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        sqlSourceReader.DataBind();
        GridView1.DataSource = sqlSourceReader;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        sqlSourceReader.DataBind();
        GridView1.DataSource = sqlSourceReader;
        GridView1.PageIndex = e.NewPageIndex;
        
        GridView1.DataBind();    
    }
}