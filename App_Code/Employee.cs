using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Company
/// </summary>
/// 

namespace sqlEmployee
{
    public class Employee
    {

        public long EmpID { get; set; }
        public string EmpName { get; set; }
        public int DepID { get; set; }
        public string Email { get; set; }
        public string DepName { get; set; }
        public string OutLookId { get; set; }


    }
}