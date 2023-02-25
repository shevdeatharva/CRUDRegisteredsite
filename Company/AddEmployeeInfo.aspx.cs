using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sqlEmployee;
public partial class Company_AddEmployeeInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        string registeredEmp = SQLContextDB.GetEmployeeData(Int32.Parse(EmpID_TextBox.Text), EmpName_Textbox.Text, Empemail_textbox.Text, DepName_TextBox.Text, Convert.ToInt16(DepId_TextBox.Text), (outLook_id.Text));

        if (registeredEmp == null)
        {
            lbl_msg.Text = "Employee Data has been registered successfully";
        }
        else
        {
            lbl_msg.Text = "Error - >"+ registeredEmp;
        }

    }
}