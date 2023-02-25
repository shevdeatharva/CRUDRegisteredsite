<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Masterpages/MasterPage.master" CodeFile="ViewDetails.aspx.cs" Inherits="Company_ViewDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <title class="text-primary">Updated Details</title>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 <div>
             <h1 class="text-center text-secondary mb-2">Updated Employee Details</h1>
           <asp:Repeater runat="server" ID="repeater1">

            <HeaderTemplate>
        <table class="table table-bordered table-responsive table-hover table-info">
            <tr  class="row table-success ">
                <th class="col">    
                    Employee Name
                </th>
                <th class="col" >
                    Employee ID
                </th>
                <th class="col" >
                    Department Name
                </th>
                <th class="col" >
                    Department ID
                </th>
                <th class="col">
                    OutLook mail
                </th>
                
                <th class="col" >
               Email    
                </th>

            </tr>
   </headertemplate>
     <itemtemplate >

               <tr class="row table-warning">
            <td class="col">
                <asp:Label ID="lblempname" runat="server" Text='<%# Eval("EmployeeName") %>' />
            </td>
                   <td class="col">
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("EmployeeId") %>' />
            </td>
                   <td class="col">
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("DepartmentName") %>' />
            </td>
                   <td class="col">
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("DepartmentId") %>' />
            </td>
                   <td class="col">
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("OutLookID") %>' />
            </td>
                   <td class="col">
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("EmpEmail") %>' />
            </td>
                   </tr>

      </itemtemplate>
           <footertemplate>
               </table>
        </footertemplate>
       </asp:repeater>

                </div>

</asp:Content>