using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ADMIN_Add_advertisement : System.Web.UI.Page
{
    connectionclass obj = new connectionclass();
    string name, image, link, description,lg;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        if (int.Parse(Session["key"].ToString()) == 0)
        {

            Response.Redirect("~/login/Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        name = txtname.Text.ToString();
        if (FileUpload1.HasFile)
        {
            lg = FileUpload1.FileName.ToString();
            FileUpload1.SaveAs(Server.MapPath("~/ADMIN/img/" + lg));
        }
        image = "~/ADMIN/img/" + FileUpload1.FileName.ToString();
      link = txtrank.Text.ToString();
        description = txtcategory.Text.ToString();
        int mm = obj.insert_into_advertise(name,image,link,description);
        if (mm == 1)
        {
            Label1.Text = "insert successfully";
        }
        else
        {
            Label1.Text = "not successfully";
        }
        txtcategory.Text = "";
        txtname.Text = "";
        txtrank.Text = "";
    }
}