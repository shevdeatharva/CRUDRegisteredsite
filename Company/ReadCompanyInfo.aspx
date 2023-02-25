<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Masterpages/MasterPage.master" CodeFile="ReadCompanyInfo.aspx.cs" Inherits="Company_ReadCompanyInfo" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <h1 class="text-center text-success" >Employees Details</h1>
        <div class="container-fluid ">                                                                          
            <asp:GridView runat="server" width="100%" CssClass="table table-bordered  table-condensed table-responsive table-hover" ID="emp_detail">
                <%--<Columns>
                    <asp:BoundField HeaderText="EName" DataField="EmployeeName" />
                     <asp:BoundField HeaderText="EIdentification No." DataField="EmployeeId" />
                     <asp:BoundField HeaderText="EName" DataField="DepartmentId" />
                </Columns> --%>
               <HeaderStyle backcolor="MediumSeaGreen" Font-Size="20px" ForeColor="" />
            </asp:GridView>
        </div>
    </asp:Content>