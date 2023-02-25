<%@ Page Title="" Language="C#"  MasterPageFile="~/Masterpages/MasterPage.master"
    AutoEventWireup="true" CodeFile="UpdateEmployeeData.aspx.cs" Inherits="Company_UpdateEmployeeData" 
  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <div class="container-fluid">

    <h1 class="header text-warning text-center" >Update Data Employee</h1>
        <div class="wrapper">
            
        <table class="form-horizontal ">
             <tr class="form-group">
                <td class="control-label col-sm-2">Employee Name</td>
                <td class="col-sm-10">
                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="required1" ControlToValidate="TextBox1" ValidationGroup="updateGroup" ErrorMessage="Required Field" ForeColor="red" ></asp:RequiredFieldValidator>
            </tr>
       
            <tr class="form-group">
                <td class="control-label col-sm-2">
                    Employee ID</td>
                <td class="col-sm-10">
                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="TextBox2" ValidationGroup="updateGroup" ErrorMessage="Required Field" ForeColor="red"  ></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr class="form-group">
                <td class="control-label col-sm-2">
                    Department Name</td>
                <td class="col-sm-10">
                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>

                 <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="TextBox3" ValidationGroup="updateGroup" ErrorMessage="Required Field" ForeColor="red" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="form-group">
                <td class="form-label col-sm-2">
                    Department ID</td>
                <td class="col-sm-10">
                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="TextBox4" ValidationGroup="updateGroup" ErrorMessage="Required Field" ForeColor="red"  ></asp:RequiredFieldValidator>
                 </td>
            </tr>
            
            <tr class="form-group">
                <td class="form-label col-sm-2">
                    OutLook ID</td>
                <td class="col-sm-10">
                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"></asp:TextBox>

                 <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="TextBox5" ValidationGroup="updateGroup" ErrorMessage="Required Field" ForeColor="red"  ></asp:RequiredFieldValidator>
                </td>
            </tr>
            
              <tr class="form-group">
                <td class="form-label col-sm-2">
                   Employee Email</td>
                <td class="col-sm-10">
                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"></asp:TextBox>

                   <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ControlToValidate="TextBox6" ValidationGroup="updateGroup" ErrorMessage="Required Field" ForeColor="red"  ></asp:RequiredFieldValidator>
                </td>
            </tr>
            
        </table>
        <div class="d-flex btn-group mt-2  ">
            <asp:Button ID="btnUpdate"  CssClass="btn btn-secondary" runat="server" Text="Update Book" Enabled="true" OnClick="btnUpdate_Click" ValidationGroup="updateGroup"/><br />
            <asp:Button ID="btnGetDetails" CssClass="btn btn-warning" runat="server" Text="Get Details" OnClick="btnGetDetails_Click"  />
        </div>
        </div>
        <br />
        <p />
        <div>
        <asp:Label ID="Label2"  runat="server" ForeColor="Red" Font-Size="30px" EnableViewState="False"></asp:Label><br />
       <%-- <h1>Employee Details</h1>--%>
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
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Outlook") %>' />
            </td>
                   <td class="col">
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Email") %>' />
            </td>
                   </tr>

      </itemtemplate>
           <footertemplate>
               </table>
        </footertemplate>
       </asp:repeater>

                </div>

            </div>
   </asp:Content>