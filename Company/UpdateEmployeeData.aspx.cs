using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sqlEmployee;
public partial class Company_UpdateEmployeeData : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string UpdateDetail = SQLContextDB.GetUpdateData(TextBox1.Text, Convert.ToInt32(TextBox2.Text), Convert.ToInt32(TextBox4.Text), TextBox3.Text, TextBox5.Text, TextBox6.Text);
        if (UpdateDetail == null)
        {
            Label2.Text = "Detail has been updated successfully";
        }
        else
        {
            Label2.Text = "Error->" + UpdateDetail;
        }
    }

    protected void btnGetDetails_Click(object sender, EventArgs e)
    {
       
            Employee emp = SQLContextDB.GetDetails(Int32.Parse(TextBox2.Text));
            if (emp != null)
            {
                TextBox1.Text = emp.EmpName;
                TextBox2.Text = emp.EmpID.ToString();
                TextBox3.Text = emp.DepName;
                TextBox4.Text = emp.DepID.ToString();
                TextBox5.Text = emp.OutLookId;
                TextBox6.Text = emp.Email;
                btnGetDetails.Enabled = true;
            }
            else
            {
                Label2.Text = "Sorry! Book Id Not Found";
                btnGetDetails.Enabled = false;
        }
        repeater1.DataSource = SQLContextDB.GetEmployeeDetail(Convert.ToInt64(TextBox2.Text));
        repeater1.DataBind();
        //Response.Redirect("ViewDetails.aspx");
        //string query = HttpContext.Current.Request.Url.AbsoluteUri;


    }
}