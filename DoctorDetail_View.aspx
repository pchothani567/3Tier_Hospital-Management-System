<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DoctorDetail_View.aspx.cs" Inherits="Project_Hospital.DoctorDetail_View" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>

<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">

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

  <link rel="stylesheet" href="../assets/vendor/aimate/animate.css">

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
              <a href="#"><span class="mai-mail text-primary"></span>onehealth@gmail.com</a>

              <%-- User Name--%> <%--RegistrationTable=>Table--%>
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
            </div>
          </div>
        </div> <!-- .row -->
      </div> <!-- .container -->
    </div> <!-- .topbar -->

    <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
      <div class="container">
        <a class="navbar-brand" href="#"><span class="text-primary">One</span>-Health</a>

        <%--<form action="#">
          <div class="input-group input-navbar">
            <div class="input-group-prepend">
              <span class="input-group-text" id="icon-addon1"><span class="mai-search"></span></span>
            </div>
            <input type="text" class="form-control" placeholder="Enter keyword.." aria-label="Username" aria-describedby="icon-addon1">
          </div>
        </form>--%>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupport" aria-controls="navbarSupport" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupport">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="Index.aspx">Home</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="Doctor Detail.aspx">Doctor Detail</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="About us.aspx">About Us</a>
            </li>           
            <li class="nav-item">
              <a class="nav-link" href="News.aspx">News</a>
            </li>
            <li class="nav-item ">
              <a class="nav-link" href="contact.aspx">Contact</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="appointment.aspx">Make Appointment</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="FeedBackForm.aspx">Patient Feedback</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="TermsAndCondition.aspx">Terms and Condition</a>
            </li>
            <li class="nav-item">
               <asp:Button ID="logout_btn" runat="server" Text="Logout" CssClass="btn btn-primary ml-lg-3" OnClick="logout_btn_Click"  />      
            </li>
            <%--<li class="nav-item">
              <a class="btn btn-primary ml-lg-3" href="#">Login / Register</a>
            </li>--%>
          </ul>
        </div> <!-- .navbar-collapse -->
      </div> <!-- .container -->
    </nav>
  </header>


<%--     <div class="page-banner overlay-dark bg-image" style="background-image: url(../assets/img/bg_image_1.jpg);">
    <div class="banner-section">
      <div class="container text-center wow fadeInUp">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Doctor Detail</li>
          </ol>
        </nav>
        <h1 class="font-weight-normal">Doctor Detail</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->--%>

   <%--       
     <br /><br />

    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Admin/"+Eval("Photo") %>' />
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Name :"></asp:Label>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
            <br />

            <asp:Label ID="Label6" runat="server" Text="Gender : "></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
            <br />

            <asp:Label ID="Label7" runat="server" Text="Speciality : "></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Speciality") %>'></asp:Label>
            <br />

            <asp:Label ID="Label8" runat="server" Text="Phone No. : "></asp:Label>
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>

        </ItemTemplate>
    </asp:DataList>

    <br /><br />--%>
    
</asp:Content>

<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
    
     <style>
        .doctor-detail-container {
            text-align: center;
        }
        .doctor-card {
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 2px 2px 10px rgba(0,0,0,0.1);
            background-color: #fff;
            display: inline-block;
            text-align: left;
        }
        .doctor-img {
            border-radius: 10px;
            margin-bottom: 15px;
        }
    </style>


</asp:Content>

<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">
        
    <br /><br /><br />
     <div class="container doctor-detail-container">
        <h1 class="text-center mb-5 wow fadeInUp">Doctor Detail</h1> 

        <center>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" CssClass="text-center">
            <ItemTemplate>
                <div class="doctor-card">
                    <asp:Image ID="Image1" runat="server" Height="270px" Width="300px" ImageUrl='<%# "Admin/"+Eval("Photo") %>' CssClass="doctor-img img-fluid" />
                    
                    <p><strong>Name:</strong> <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label></p>
                    <p><strong>Gender:</strong> <asp:Label ID="Label2" runat="server" Text='<%# Eval("Gender") %>'></asp:Label></p>
                    <p><strong>Speciality:</strong> <asp:Label ID="Label3" runat="server" Text='<%# Eval("Speciality") %>'></asp:Label></p>
                    <p><strong>Mobile No.:</strong> <asp:Label ID="Label4" runat="server" Text='<%# Eval("Phone") %>'></asp:Label></p>

                  <%--   <asp:LinkButton ID="LinkButton1"  runat="server"  CssClass="btn btn-primary" href="Index.aspx"  >Back</asp:LinkButton>--%>
                   <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" OnClick="LinkButton1_Click" >Back</asp:LinkButton>
                </div>
            </ItemTemplate>
        </asp:DataList>
        </center>
    </div>

   

</asp:Content>

