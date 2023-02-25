<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Masterpages/MasterPage.master"  CodeFile="deleteData.aspx.cs" Inherits="Company_deleteData" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function alertMessage() {
            alert("you sure!, you want to delete data")
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class=" container-fluid bg-dark ">
        <div class="m-5">
    <h1 class="text-center header text-danger">Delete Employee Data</h1>
    <div class=" row g-12 ">
        <div class="col-12">
        <asp:Label runat="server" Text="Employee ID:" CssClass="form-label text-white"></asp:Label>

          <asp:TextBox ID="txtBookid" runat="server" CssClass="form-control "></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="required" ControlToValidate="txtBookid" forecolor="Red"></asp:RequiredFieldValidator>
  </div>
    </div>
        <div class="col-3 pt-3 mr-4 pb-1">
                <asp:Button ID="btnDelete" runat="server" Text="Remove" OnClick=" btnDelete_Click"  CssClass="  btn btn-outline-danger"/>

        <asp:Label ID="Label1" runat="server" EnableViewState="False" CssClass="text-secondary text-h6"></asp:Label>
      <br/>
            </div>
        </div>
        </div>
</asp:Content>
