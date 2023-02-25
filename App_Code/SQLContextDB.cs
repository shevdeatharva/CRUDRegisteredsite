using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
/// <summary>
/// Summary description for SQLContextDB
/// </summary>
/// 
namespace sqlEmployee{ 
public class SQLContextDB
{
       static string cs = WebConfigurationManager.ConnectionStrings["EmployeeConnectString"].ConnectionString;
    public static DataSet ReadEmpData()
    {
            SqlConnection con = new SqlConnection(cs);
		try
		{
           
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("ReadEmployeeInfo", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.Fill(ds, "Employee");
            return ds;
        }
		catch (Exception)
		{

            return null;
		}
        finally
        {
            SqlConnection connection= new SqlConnection(cs);
            connection.Close();
        }
    }
        public static string GetEmployeeData(int Eid, string Ename,string Empmail ,string depname, int depid, string outId)
        {
            try
            {
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                SqlCommand data = new SqlCommand("EmployeeData", con);
                data.CommandType = CommandType.StoredProcedure;
                data.Parameters.AddWithValue("@Ename", Ename);
                data.Parameters.AddWithValue("@EId", Eid);
                data.Parameters.AddWithValue("@Empemail",Empmail);
                data.Parameters.AddWithValue("@DepName", depname);
                data.Parameters.AddWithValue("@DeptId", depid);
                data.Parameters.AddWithValue("@OLId", outId);
                data.ExecuteNonQuery();
                return null;
            }
            catch (Exception ex)
            {

                return ex.Message;
            }
            finally
            {
                SqlConnection connection = new SqlConnection();
                    connection.Close();
            }
        }
        public static string GetUpdateData(string Emname, int Emid, int Depid, string depname, string outlokId, string Ememail)
        {

            try
            {
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                SqlCommand data = new SqlCommand("UpdateEmployeeDetail", con);
                data.CommandType = CommandType.StoredProcedure;
                data.Parameters.AddWithValue("ename", Emname);
                data.Parameters.AddWithValue("Em_Id", Emid);
                data.Parameters.AddWithValue("DepId", Depid);

                data.Parameters.AddWithValue("DeptName", depname);

                data.Parameters.AddWithValue("Emp_mail", Ememail);
                data.Parameters.AddWithValue("OutLook", outlokId);
                data.ExecuteNonQuery();
                return null;
            }
            catch
            {

                return null;
            }
            finally
            {
                SqlConnection connection = new SqlConnection();
                connection.Close();
            }
        }

        public static Employee GetDetails(long dataByEMPid)
        {
               SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand data = new SqlCommand("GetEmpDetail", con);
            data.CommandType = CommandType.StoredProcedure;
            data.Parameters.AddWithValue("@emId",dataByEMPid);
            SqlDataReader dr = data.ExecuteReader();
            if (dr.Read())
            {
                Employee b = new Employee();
                b.EmpID = Convert.ToInt64(dr["EmployeeId"]);
                b.EmpName = dr["EmployeeName"].ToString();
                b.Email = dr["Email"].ToString();
                b.DepName= dr["DepartmentName"].ToString() ;
                b.DepID = Convert.ToInt32(dr["DepartmentId"]);
                b.OutLookId = dr["Outlook"].ToString();
                return b;
            }
            else
            {

            return null;

            }
        }
        public static string DeleteEmp(int EmployeeData)
        {
                SqlConnection con = new SqlConnection(cs);
            try
            {
                con.Open();
                SqlCommand data = new SqlCommand("DeleteEmp", con);
                data.CommandType = CommandType.StoredProcedure;
                data.Parameters.AddWithValue("empId", EmployeeData);
                data.ExecuteNonQuery();
                return null;
            }
            catch (Exception ex)
            {

                return ex.Message;
            }
            finally
            {
                con.Close();
            }
        }
        public static DataSet GetEmployeeDetail(long EmployeeData) {

            SqlConnection con = new SqlConnection(cs);
            try
            {
                con.Open();
                DataSet ds= new DataSet();
                SqlDataAdapter da = new SqlDataAdapter("GetEmpDetail", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Parameters.AddWithValue("emId", EmployeeData);
                da.Fill(ds, "Employee");
                
                return ds;
            }
            catch 
            {
                return null;
            }
            finally
            {
                con.Close();
            }
               
        }
    }
}