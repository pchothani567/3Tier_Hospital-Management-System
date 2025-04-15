<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DoctorDetail_View.aspx.cs" Inherits="Project_Hospital.Admin.DoctorDetail_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
              
</asp:Content>

<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
    
    <center>

       <div class="page-section">
    <div class="container">
        <h1 class="text-center mb-5 wow fadeInUp">Doctor Detail</h1> 
        <div class="owl-carousel wow fadeInUp" id="doctorSlideshow">
        <div class="col-lg-30 py-15 wow zoomIn">
   
    
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
             <div class="item">
                     <div class="card-doctor">
                         
           
            <asp:Image ID="Image1" runat="server"  Height="270px"  Width="300px"  ImageUrl='<%# Eval("Photo") %>'  CssClass="doctor-img" />
            <br />
            <br />

            <asp:Label ID="Label5" runat="server" Text="Name : "></asp:Label>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
            <br />

            <asp:Label ID="Label6" runat="server" Text="Gender : "></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
            <br />

            <asp:Label ID="Label7" runat="server" Text="Speciality : "></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Speciality") %>'></asp:Label>
            <br />

            <asp:Label ID="Label8" runat="server" Text="Mobile No. : "></asp:Label>
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>

            <br /><br />
           

             <asp:LinkButton ID="LinkButton1"  runat="server"  CssClass="btn btn-primary ml-lg-3" href="index.aspx"  >Back</asp:LinkButton>
               </div>
              </div>

        </ItemTemplate>
    </asp:DataList>
    
        </div>
         </div>
    </div>      
  
    </center>
</asp:Content>


<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">
                 
</asp:Content>
--%>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DoctorDetail_View.aspx.cs" Inherits="Project_Hospital.Admin.DoctorDetail_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    
    
    
    
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
               <asp:Button ID="Button1" runat="server" Text="Logout" CssClass="btn btn-primary ml-lg-3" OnClick="Button1_Click"  />      
            </div>
          </div>
        </div> <!-- .row -->
      </div> <!-- .container -->
    </div> <!-- .topbar -->

 <nav class="navbar navbar-expand-lg navbar-light shadow-sm" style="background-color: #fff; width: 100%;">
  <div class="container-fluid">
    <!-- Your content here -->
  
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
              <a class="nav-link" href="DoctorDetail_View.aspx">Doctor Detail</a>
            </li>
            <li class="nav-item">
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
            <%--<li class="nav-item">--%>             
             
            <%--</li>--%>
          </ul>
        </div> <!-- .navbar-collapse -->
      </div> <!-- .container -->
    </nav>
  </header>
    


</asp:Content>

<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">

    <div class="container doctor-detail-container">
        <h1 class="text-center mb-5 wow fadeInUp">Doctor Detail</h1> 

        <center>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" CssClass="text-center">
            <ItemTemplate>
                <div class="doctor-card">
                    <asp:Image ID="Image1" runat="server" Height="270px" Width="300px" ImageUrl='<%# Eval("Photo") %>' CssClass="doctor-img img-fluid" />
                    
                    <p><strong>Name:</strong> <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label></p>
                    <p><strong>Gender:</strong> <asp:Label ID="Label2" runat="server" Text='<%# Eval("Gender") %>'></asp:Label></p>
                    <p><strong>Speciality:</strong> <asp:Label ID="Label3" runat="server" Text='<%# Eval("Speciality") %>'></asp:Label></p>
                    <p><strong>Mobile No.:</strong> <asp:Label ID="Label4" runat="server" Text='<%# Eval("Phone") %>'></asp:Label></p>

                  <%--   <asp:LinkButton ID="LinkButton1"  runat="server"  CssClass="btn btn-primary" href="index.aspx"  >Back</asp:LinkButton>--%>
                   <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" OnClick="Back_Click">Back</asp:LinkButton>
                </div>
            </ItemTemplate>
        </asp:DataList>
        </center>
    </div>

</asp:Content>

<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">



</asp:Content>
