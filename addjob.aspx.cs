using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class ADMIN_addjob : System.Web.UI.Page

{
    SqlConnection con = new SqlConnection();
    DataSet ds = new DataSet();
    connectionclass obj = new connectionclass();
    string recruiter, categ, sttt, quali,postdate,lastdate,numvacancy,payscale,grdpay,nationality,aglimit,agrelax,jobloc,sp,appfee,h2app,padd;
    
   
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (int.Parse(Session["key"].ToString()) == 0)
        {

            Response.Redirect("~/login/Login.aspx");
        }
        if (!IsPostBack)
        {
            bindquali();
            bindrecruit();
            bindcategory();
            bindstates();
            ddlnationality.Items.Add("INDIAN");
            ddlnationality.Items.Add("OTHER");
        }
    }
    protected void bindquali()
    {
        try
        {
            DataTable dt = obj.bindqualification();
            if (dt.Rows.Count > 0)
            {
                ddlquali.DataSource = dt;
                ddlquali.DataValueField = "qualificationname";
                ddlquali.DataBind();
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    protected void bindrecruit()
    {
        try
        {
            DataTable dt = obj.bindRecruiter();
            if (dt.Rows.Count > 0)
            {

                ddlrecruiter.DataSource = dt;
                ddlrecruiter.DataValueField = "Recruitername";
                ddlrecruiter.DataBind();
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    protected void bindcategory()
    {
        try
        {
            DataTable dt = obj.bindcateg();
            if (dt.Rows.Count > 0)
            {

                ddlcategory.DataSource = dt;
                ddlcategory.DataValueField = "category";
                ddlcategory.DataBind();
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }


    protected void bindstates()
    {
        try
        {
            DataTable dt = obj.bindstates();
            if (dt.Rows.Count > 0)
            {

               ddlstate.DataSource = dt;
               ddlstate.DataValueField = "statename";
               ddlstate  .DataBind();
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }




    protected void Button2_Click(object sender, EventArgs e)
    {
        string lg, name, postname,des, waytoapply, link;
        if (uploadlogo.HasFile)
        {
            lg = uploadlogo.FileName.ToString();
            uploadlogo.SaveAs(Server.MapPath("~/ADMIN/img/" + lg));
        }
        string log = "~/ADMIN/img/" + uploadlogo.FileName.ToString();
        name = txtname.Text.ToString();
        foreach (ListItem li in ddlrecruiter.Items)
        {
            if (li.Selected)
                recruiter = recruiter + li.Text;
        }
        postname = txtpostname.Text.ToString();
        foreach (ListItem li in ddlcategory.Items)
        {
            if (li.Selected)
                categ= categ + li.Text;
        }

        foreach (ListItem li in ddlstate.Items)
        {
            if (li.Selected)
                sttt = sttt + li.Text;
        }
        des = txtbxdescription.Text.ToString();
        numvacancy = txtnovacancy.Text.ToString();
        payscale = txtpayscale.Text.ToString();
        grdpay = txtgradepay.Text.ToString();
        foreach (ListItem li in ddlnationality.Items)
        {
            if (li.Selected)
                nationality = quali + li.Text;
        }
        aglimit = txtagelimit.Text.ToString();
        agrelax = txtagerelaxation.Text.ToString();
        jobloc = txtjoblocation.Text.ToString();
        sp = txtselectionprocess.Text.ToString();
        appfee = txtappsfee.Text.ToString();
        h2app = txthow2apply.Text.ToString();
        padd = txtpostaladdrss.Text.ToString();
        foreach (ListItem li in ddlquali.Items)
        {
            if (li.Selected)
                quali = quali + li.Text;
        }

        postdate = txtpostdate.Text.ToString();

        lastdate = txtlastdate.Text.ToString();
       
        waytoapply = txtwaytoapply.Text.ToString();
        link = txtlink.Text.ToString();
        int mm = obj.insert_into_job(log, name, recruiter, postname, categ, sttt, des, numvacancy, payscale, grdpay, nationality, aglimit, agrelax, jobloc, sp, appfee, h2app, padd, quali, postdate, lastdate, waytoapply, link);
        if (mm == 1)
        {
            Label19.Text = "insert successfully";
        }
        else
        {
            Label19.Text = "not successfully";
        }
        txtname.Text = " ";
        txtpostname.Text = " ";
        txtbxdescription.Text = " ";
        txtpostdate.Text = " ";
        txtlastdate.Text = " ";
        txtwaytoapply.Text = " ";
        txtlink.Text = " ";
        txtagelimit.Text = " ";
        txtagerelaxation.Text = " ";
        txtjoblocation.Text = " ";
        txtselectionprocess.Text = " ";
        txtappsfee.Text = " ";
        txthow2apply.Text = " ";
        txtpostaladdrss.Text = " ";
        
    }
   
}