<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddDepartment.aspx.cs" Inherits="Project_Hospital.Admin.AddDepartment" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <meta name="copyright" content="MACode ID, https://macodeid.com/">

  <title>One Health - Medical Center HTML5 Template</title>

  <link rel="stylesheet" href="../assets/css/maicons.css">

  <link rel="stylesheet" href="../assets/css/bootstrap.css">

  <link rel="stylesheet" href="../assets/vendor/owl-carousel/css/owl.carousel.css">

  <link rel="stylesheet" href="../assets/vendor/animate/animate.css">

  <link rel="stylesheet" href="../assets/css/theme.css">
</head>
<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>

  <header>
    <div class="topbar">
      <div class="container">
        <div class="row">
          <div class="col-sm-8 text-sm">
            <div class="site-info">
              <a href="#"><span class="mai-call text-primary"></span> +00 123 4455 6666</a>
              <span class="divider">|</span>
              <a href="#"><span class="mai-mail text-primary"></span> onehealth@gmail.com</a>

                <%-- User Name--%> <%--RegistrationAdmin=>Table--%>
                  <span class="divider">|</span>
                  <a href="#"><span class="mai-person text-primary"></span>
                  <asp:Label ID="lbl_welcome" runat="server" Text="Label"></asp:Label></a>


            </div>
          </div>
          <div class="col-sm-4 text-right text-sm">
            <div class="social-mini-button">
              <a href="#"><span class="mai-logo-facebook-f"></span></a>
              <a href="#"><span class="mai-logo-twitter"></span></a>
              <a href="#"><span class="mai-logo-dribbble"></span></a>
              <a href="#"><span class="mai-logo-instagram"></span></a>
              <asp:Button ID="Button1" runat="server" Text="Logout" CssClass="btn btn-primary ml-lg-3" OnClick="Button1_Click" />      
            </div>
          </div>
        </div> <!-- .row -->
      </div> <!-- .container -->
    </div> <!-- .topbar -->

    <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
      <div class="container">
        <a class="navbar-brand" href="#"><span class="text-primary">One</span>-Health</a>


        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupport" aria-controls="navbarSupport" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>


        <div class="collapse navbar-collapse" id="navbarSupport">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="index.aspx">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Add_Doctor.aspx">Add Doctors</a>
            </li>
             <li class="nav-item active">
              <a class="nav-link" href="AddDepartment.aspx">Add Department</a>
            </li>   
            <li class="nav-item ">
              <a class="nav-link" href="contact_details.aspx">Contact Details</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Appointment_Details.aspx">Appointment Details</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="patient_details.aspx">Patient Details</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="FeedbackFormDetail_Show.aspx">Review Detail</a>
            </li> 
            <li class="nav-item">
              <a class="nav-link" href="Register_New_Patients.aspx">Register New Patient</a>
            </li>   
            
           <%-- <li class="nav-item"> --%>            
              
           <%-- </li>--%>
          </ul>
        </div> <!-- .navbar-collapse -->
      </div> <!-- .container -->
    </nav>
  </header>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="page-banner overlay-dark bg-image" style="background-image: url(../assets/img/blog/Department_img.jpg);">
    <div class="banner-section">
        <div class="container text-center wow fadeInUp py-3"> <!-- Reduced padding -->
            <nav aria-label="Breadcrumb">
                <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-1">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Department</li>
                </ol>
            </nav>
            <h1 class="font-weight-normal text-white">Add Department Name</h1>
        </div> 
    </div> 
</div> 

<div class="d-flex justify-content-center align-items-center py-5"> <!-- Reduced py-5 to py-3 -->
    <div class="container">
        <div class="card shadow p-4 mx-auto" style="max-width: 500px;">
            <h2 class="text-center wow fadeInUp mb-3">Department Name</h2>

            <div class="row align-items-center mb-2"> <!-- Reduced mb-3 to mb-2 -->
                <div class="col-4 text-end">
                    <asp:Label ID="Label1" runat="server" CssClass="form-label fw-bold" Text="Department"></asp:Label>
                </div>
                <div class="col-8">
                    <asp:TextBox ID="txtDeptNm" runat="server" CssClass="form-control" placeholder="Enter Department Name"></asp:TextBox>
                </div>
            </div>

            <asp:Button ID="Button2" runat="server" Text="Add Department" CssClass="btn btn-primary w-100 mt-2" OnClick="Button2_Click" /> <!-- Reduced mt-3 to mt-2 -->
        </div>
    </div>
</div>

    <br /><br /><br />

      <h1 class="text-center wow fadeInUp">Added Department</h1>

    <br />
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" BorderColor="#35E0B6" BorderWidth="4px">
        <Columns>
            <asp:TemplateField HeaderText="Id">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DepartmentName">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("DepartmentName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt" Font-Bold="True">Edit</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt" Font-Bold="True" ForeColor="Red">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        </asp:GridView>
    </center>
    <br />

    <center>
    <asp:Button ID="Button3"  CssClass="btn btn-primary  mt-2" runat="server" Text="Print Department Detail" OnClick="Button3_Click" />    
    </center>


    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />


    <br />


</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
