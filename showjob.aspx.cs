using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ADMIN_showjob : System.Web.UI.Page
{
    connectionclass obj = new connectionclass();
   
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindgridview();
            
        }
        if (int.Parse(Session["key"].ToString()) == 0)
        {

            Response.Redirect("~/login/Login.aspx");
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
        ds = obj.show(2);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Visible = false;
            GridView1.Visible = true;
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        else
        {
            Label1.Visible = true;
             GridView1.Visible = false;
        }
    }
    public void Gridview1_rowdeleting(object sender, GridViewDeleteEventArgs e)
    {
        //////int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        int n = obj.delete_data(ID);
        bindgridview();
    }
    //bind ddl in gridview/////
   



    public void Grdview1_updating(object sender, GridViewUpdateEventArgs e)
    {
        string logos;
        GridViewRow Row = (GridViewRow)GridView1.Rows[e.RowIndex];
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        FileUpload companylogo = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1");
        if (companylogo.HasFile)
        {
            string ph = companylogo.FileName.ToString();
            companylogo.SaveAs(Server.MapPath("~/Admin/img") + ph);
             logos = "~/Admin/img" + companylogo.FileName.ToString();
        }
        else
        {
            Image img1 = (Image)Row.FindControl("ImageLogou");
            logos = img1.ImageUrl;
        }
        
        TextBox Name = (TextBox)Row.FindControl("TextName");
        DropDownList recruiter = (DropDownList)Row.FindControl("ddlrecruiter");
        TextBox postname = (TextBox)Row.FindControl("Textpostname");
        DropDownList category = (DropDownList)Row.FindControl("ddlcategory");
        DropDownList state = (DropDownList)Row.FindControl("ddlstate");
        TextBox Description = (TextBox)Row.FindControl("Textdescription");
        TextBox noofvacancy = (TextBox)Row.FindControl("TextNoOfVacancy");
        TextBox payscale = (TextBox)Row.FindControl("TextPayScale");
        TextBox gradepay = (TextBox)Row.FindControl("TextGradePay");
        DropDownList nation = (DropDownList)Row.FindControl("ddlNationality");
        TextBox aglim = (TextBox)Row.FindControl("TextAgeLimit");
        TextBox ar = (TextBox)Row.FindControl("TextAgeRelaxation");
        TextBox jobloc = (TextBox)Row.FindControl("TextJobLocation");
        TextBox selproc = (TextBox)Row.FindControl("TextSelectionProcess");
        TextBox appfee = (TextBox)Row.FindControl("TextApplicationFee");
        TextBox h2app = (TextBox)Row.FindControl("TextHowToApply");
        TextBox pa = (TextBox)Row.FindControl("TextPostalAddress");
          
        DropDownList qualification = (DropDownList)Row.FindControl("ddlqualification");
        TextBox postdate = (TextBox)Row.FindControl("Textpostdate");
        TextBox lastdate = (TextBox)Row.FindControl("Textlastdate");
        TextBox waytoapply = (TextBox)Row.FindControl("Textwaytoapply");
        TextBox link = (TextBox)Row.FindControl("Textlink");
        int a = obj.update_data(id,logos, Name.Text, recruiter.SelectedItem.Text.ToString(), postname.Text, category.SelectedItem.Text.ToString(), state.SelectedItem.Text.ToString(), Description.Text.ToString(),noofvacancy.Text.ToString(),payscale.Text.ToString(),gradepay.Text.ToString(),nation.SelectedItem.Text.ToString(),aglim.Text.ToString(),ar.Text.ToString(),jobloc.Text.ToString(),selproc.Text.ToString(),appfee.Text.ToString(),h2app.Text.ToString(),pa.Text.ToString(), qualification.SelectedItem.Text.ToString(), postdate.Text, lastdate.Text, waytoapply.Text, link.Text);
        if (a> 0)
        {
            Label1.Text = "data updated";
        }
        else
        {
            Label1.Text = "data not updated";
        }
        GridView1.EditIndex = -1;
        bindgridview();
       

    }

    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow && GridView1.EditIndex==e.Row.RowIndex)
        {
            //Find the DropDownList in the Row
            obj.ConOpen();
            DropDownList ddlcategory = (DropDownList)e.Row.FindControl("ddlcategory") ;
            string query = "SELECT DISTINCT Category FROM categories ";
            SqlCommand cmd = new SqlCommand(query, obj.con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {

                    ddlcategory.Items.Add(dr[0].ToString());
                }
            }
            
            
            //Add Default Item in the DropDownList
            ddlcategory.Items.Insert(0, new ListItem("Please select"));

            // Select the Country of Customer in DropDownList
            string country = (e.Row.FindControl("Label17") as Label).Text;
            ddlcategory.Items.FindByValue(country).Selected = true;

            obj.con.Close();
          
        }
        if (e.Row.RowType == DataControlRowType.DataRow && GridView1.EditIndex == e.Row.RowIndex)
        {
            //Find the DropDownList in the Row
            obj.ConOpen();
            DropDownList ddlstate = (DropDownList)e.Row.FindControl("ddlstate");
            string query = "SELECT DISTINCT Statename FROM states";
            SqlCommand cmd = new SqlCommand(query, obj.con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {

                    ddlstate.Items.Add(dr[0].ToString());
                }
            }


            //Add Default Item in the DropDownList
            ddlstate.Items.Insert(0, new ListItem("Please select"));

            // Select the Country of Customer in DropDownList
            string st = (e.Row.FindControl("Label27") as Label).Text;
            ddlstate.Items.FindByValue(st).Selected = true;
        }
        if (e.Row.RowType == DataControlRowType.DataRow && GridView1.EditIndex == e.Row.RowIndex)
        {
            //Find the DropDownList in the Row
            obj.ConOpen();
            DropDownList ddlrecruiters = (DropDownList)e.Row.FindControl("ddlrecruiter");
            string query = "SELECT DISTINCT Recruiter FROM job";
            SqlCommand cmd = new SqlCommand(query, obj.con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {

                    ddlrecruiters.Items.Add(dr[0].ToString());
                }
            }


            //Add Default Item in the DropDownList
            ddlrecruiters.Items.Insert(0, new ListItem("Please select"));

            // Select the Country of Customer in DropDownList
            string st = (e.Row.FindControl("Label44") as Label).Text;
            ddlrecruiters.Items.FindByValue(st).Selected = true;
        }

        if (e.Row.RowType == DataControlRowType.DataRow && GridView1.EditIndex == e.Row.RowIndex)
        {
            //Find the DropDownList in the Row
            obj.ConOpen();
            DropDownList ddlnationalities = (DropDownList)e.Row.FindControl("ddlnationality");
            string query = "SELECT DISTINCT Nationality FROM job";
            SqlCommand cmd = new SqlCommand(query, obj.con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {

                    ddlnationalities.Items.Add(dr[0].ToString());
                }
            }


            //Add Default Item in the DropDownList
            ddlnationalities.Items.Insert(0, new ListItem("Please select"));

            // Select the Country of Customer in DropDownList
            string st = (e.Row.FindControl("Label444") as Label).Text;
            ddlnationalities.Items.FindByValue(st).Selected = true;
        }
        if (e.Row.RowType == DataControlRowType.DataRow && GridView1.EditIndex == e.Row.RowIndex)
        {
            //Find the DropDownList in the Row
            obj.ConOpen();
            DropDownList ddlqualifications = (DropDownList)e.Row.FindControl("ddlqualification");
            string query = "SELECT DISTINCT qualificationname FROM qualifications";
            SqlCommand cmd = new SqlCommand(query, obj.con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {

                    ddlqualifications.Items.Add(dr[0].ToString());
                }
            }


            //Add Default Item in the DropDownList
            ddlqualifications.Items.Insert(0, new ListItem("Please select"));

            // Select the Country of Customer in DropDownList
            string st = (e.Row.FindControl("Label999") as Label).Text;
            ddlqualifications.Items.FindByValue(st).Selected = true;
        }
    }




    //protected void OnRowDataBounds(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.RowType == DataControlRowType.DataRow && GridView1.EditIndex == e.Row.RowIndex)
    //    {
    //        //Find the DropDownList in the Row
    //        obj.ConOpen();
    //        DropDownList ddlstate = (DropDownList)e.Row.FindControl("ddlstate");
    //        string query = "SELECT DISTINCT States FROM job";
    //        SqlCommand cmd = new SqlCommand(query, obj.con);
    //        SqlDataReader dr;
    //        dr = cmd.ExecuteReader();
    //        if (dr.HasRows)
    //        {
    //            while (dr.Read())
    //            {

    //                ddlstate.Items.Add(dr[0].ToString());
    //            }
    //        }


    //        //Add Default Item in the DropDownList
    //        ddlstate.Items.Insert(0, new ListItem("Please select"));

    //        // Select the Country of Customer in DropDownList
    //        string country = (e.Row.FindControl("Label17") as Label).Text;
    //        ddlstate.Items.FindByValue(country).Selected = true;
    //    }

    //}


    
    }
  
 
