using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sqlEmployee;
public partial class Company_deleteData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        string Delete = SQLContextDB.DeleteEmp(Convert.ToInt32(txtBookid.Text));
        if(Delete==null)
        {
            Label1.Text = "successfully deleted";
        }
        else
        {
            Label1.Text = "Error " + Delete;
        }
        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage()", true);
    }
}