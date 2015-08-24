using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reader_ShowPersonalInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ID"] == null)
        {
            Response.Write("<script>alert('您还没有登陆');location.href='../Login.aspx'</script>");

        }
        SqlSourcePersonnel.DataBind();
        SqlSourceReader.DataBind();
        lblID.Text = gvPersonnel.Rows[0].Cells[0].Text;
        lblName.Text = gvPersonnel.Rows[0].Cells[1].Text;
        lblGender.Text = gvPersonnel.Rows[0].Cells[2].Text;
        lblPhoneNum.Text = gvPersonnel.Rows[0].Cells[3].Text;
        lblMaxNum.Text = gvReader.Rows[0].Cells[2].Text;
        lblBookNum.Text = gvReader.Rows[0].Cells[3].Text;
        
        
    }
}