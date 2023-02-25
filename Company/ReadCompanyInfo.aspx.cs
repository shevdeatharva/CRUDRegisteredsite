using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sqlEmployee;
public partial class Company_ReadCompanyInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        emp_detail.DataSource = SQLContextDB.ReadEmpData();
        emp_detail.DataBind();
    }
}