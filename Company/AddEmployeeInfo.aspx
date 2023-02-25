<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/MasterPage.master" AutoEventWireup="true" CodeFile="AddEmployeeInfo.aspx.cs" Inherits="Company_AddEmployeeInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <title class="text-primary">Employee Registration</title>



</asp:Content>


    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
          
       <FormView>
          <div class="container bg-dark " >
              <div class="m-5">
        <h1 class="header text-primary text-center" >Employee Registration</h1>
              <div class="row g-12 p-4 m-4 ">
        <div class="col-md-4">
      
            <asp:Label runat="server" ID="Emp_name" Text="Employee_Name" CssClass="form-label text-light" >  </asp:Label>
            <asp:TextBox runat="server" ID="EmpName_Textbox" placeholder="EmployeeName:" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="required field" ControlToValidate="EmpName_Textbox" ForeColor="Red" ></asp:RequiredFieldValidator>

        </div>
        <div class="col-md-4">
            <asp:Label runat="server" ID="Label1" Text="Employee_ID" CssClass="form-label text-light"></asp:Label>
            <asp:TextBox runat="server" ID="EmpID_TextBox" placeholder="Employee-ID:" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="required field" ControlToValidate="EmpID_TextBox" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div  class="col-md-4">
            <asp:Label runat="server" ID="Label2" Text="Employee_Email" CssClass="form-label text-light"></asp:Label>
            <asp:TextBox runat="server" ID="Empemail_textbox" TextMode="Email" placeholder="Employee-Email:" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="required field" ControlToValidate="Empemail_textbox" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
              <div  class="col-md-4">
            <asp:Label runat="server" ID="Label3" Text="Department_ID" CssClass="form-label text-light"></asp:Label>
            <asp:TextBox runat="server" ID="DepId_TextBox" placeholder="Department-ID:"  CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="required field" ControlToValidate="DepId_TextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

              <div  class="col-md-4">
            <asp:Label runat="server" ID="Label4" Text="Department-Name" CssClass="form-label text-light"></asp:Label>
            <asp:TextBox runat="server" ID="DepName_TextBox" placeholder="Department Name:"  CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="required field" ControlToValidate="DepName_TextBox" ForeColor="Red"></asp:RequiredFieldValidator>
 </div>
              <div  class="col-md-4">
            <asp:Label runat="server" ID="Label5" Text="OutLook-Id: " CssClass="form-label text-light"></asp:Label>
            <asp:TextBox runat="server" ID="outLook_id" placeholder="OutLook Id" TextMode="Email"  CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="required field" ControlToValidate="DepName_TextBox" ForeColor="Red"></asp:RequiredFieldValidator>
           
        </div>
            <div class="d-grid gap-2 col-6 mx-auto">
        <asp:Button runat="server" CssClass="btn btn-outline-primary " ID="btn_btn_insert" Text="Insert" OnClick="Unnamed_Click" />
        </div>
              </div>
              </div>
              </div>
            </FormView>
               
        <asp:Label ID="lbl_msg" runat="server" CssClass="bg-info"></asp:Label>
</asp:Content>
        
