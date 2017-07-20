using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ADMIN_showadvertise : System.Web.UI.Page
{
    connectionclass obj = new connectionclass();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (int.Parse(Session["key"].ToString()) == 0)
        {

            Response.Redirect("~/login/Login.aspx");
        }
        if (!IsPostBack)
        {
            bindgridview();
        }

    }
    public void gridview_rowediting(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        bindgridview();
    }
    public void gridview_rowcanceling(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bindgridview();
    }
    public void gridview_pageindexchanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bindgridview();
    }
    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
    public void bindgridview()
    {
        ds = obj.advertiseshow(3);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label5.Visible = false;
            GridView1.Visible = true;
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        else
        {
            Label5.Visible = true;
            GridView1.Visible = false;
        }
    }
    public void Grdview1_updating(object sender, GridViewUpdateEventArgs e)
    {
        string logos;
        GridViewRow Row = (GridViewRow)GridView1.Rows[e.RowIndex];
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        TextBox Name = (TextBox)Row.FindControl("TextBox1");

        FileUpload companylogo = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1");
        if (companylogo.HasFile)
        {
            string ph = companylogo.FileName.ToString();
            companylogo.SaveAs(Server.MapPath("~/Admin/img") + ph);
            logos = "~/Admin/img" + companylogo.FileName.ToString();
        }
        else
        {
            Image img1 = (Image)Row.FindControl("Image1");
            logos = img1.ImageUrl;
        }
        TextBox Rank = (TextBox)Row.FindControl("TextBox2");
        TextBox Category = (TextBox)Row.FindControl("Textbox3");
        int a = obj.updateadvertise(id, Name.Text, logos, Rank.Text, Category.Text);
        if (a > 0)
        {
            Label5.Text = "data updated";
        }
        else
        {
            Label5.Text = "data not updated";
        }
        GridView1.EditIndex = -1;
        bindgridview();


    }
    public void Gridview1_rowdeleting(object sender, GridViewDeleteEventArgs e)
    {
        //////int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        int n = obj.delete_advertisedata(ID);
        bindgridview();
    }
}