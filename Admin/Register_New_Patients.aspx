<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register_New_Patients.aspx.cs" Inherits="Project_Hospital.Admin.Register_New_Patients" %>
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
              <a href="#"><span class="mai-mail text-primary"></span> mail @example.com</a>

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
            <li class="nav-item">
              <a class="nav-link" href="AddDepartment.aspx">Add Department</a>
            </li>
            <li class="nav-item">
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
            <li class="nav-item active">
              <a class="nav-link" href="Register_New_Patients.aspx">Register New Patient</a>
            </li>           
            <%--<li class="nav-item">             
             
            </li>--%>
          </ul>
        </div> <!-- .navbar-collapse -->
      </div> <!-- .container -->
    </nav>
  </header>
   
</asp:Content>


<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
  
      <div class="page-banner overlay-dark bg-image" style="background-image: url(../assets/img/bg_image_1.jpg);">
    <div class="banner-section">
      <div class="container text-center wow fadeInUp">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">New Patient</li>
          </ol>
        </nav>
        <h1 class="font-weight-normal">New Patient Details</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->

           <!-- .page-section -->

  <div class="page-section">
    <div class="container">
      <h1 class="text-center wow fadeInUp">New Regisration Patient Details</h1>

         
        <div class="row mt-3 ">

             <div class="col-12 col-sm-9 py-2 wow fadeInLeft">
              <asp:TextBox ID="txtfnm" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
          </div>
          <div class="col-12 col-sm-9 py-2 wow fadeInRight">
               <asp:TextBox ID="txteml" runat="server" CssClass="form-control" placeholder="Enter Your Email id..."></asp:TextBox>
          </div>
         
          <div class="col-12 col-sm-9 py-2 wow fadeInLeft" data-wow-delay="300ms">
              <asp:TextBox ID="date" runat="server" type="date" CssClass="form-control"></asp:TextBox>
          </div>

                    <%-- BloodGroup--%>
                  <div class="col-12 col-sm-9 py-2 wow fadeInUp" >
                     
                              <asp:DropDownList ID="DropDownListBloodGroup" runat="server" CssClass="custom-select">  
                                  <asp:ListItem>--- Select BloodGroup ---</asp:ListItem>
                                  <asp:ListItem>A+</asp:ListItem>
                                  <asp:ListItem>A-</asp:ListItem>
                                  <asp:ListItem>B+</asp:ListItem>
                                  <asp:ListItem>B-</asp:ListItem>
                                  <asp:ListItem>O+</asp:ListItem>
                                  <asp:ListItem>O-</asp:ListItem>
                                  <asp:ListItem>AB+</asp:ListItem>
                                  <asp:ListItem>AB-</asp:ListItem>
                              </asp:DropDownList>
                     </div>
        
          <div class="col-12 col-sm-9 py-2 wow fadeInRight">
              <asp:TextBox ID="txtphone" runat="server" CssClass="form-control">+91-</asp:TextBox>
          </div>
            
            <div class="col-12 col-sm-9 py-2 wow fadeInUp" >
                <asp:DropDownList ID="drpgen" runat="server" CssClass="custom-select">
                    <asp:ListItem>--- Select Gender ---</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>            
          </div>
            <div class="col-12 col-sm-9 py-2 wow fadeInRight" data-wow-delay="300ms">
              <asp:DropDownList ID="drpmrgsts" runat="server" CssClass="custom-select">
                  <asp:ListItem>--- Please Select Marital Status ---</asp:ListItem>
                  <asp:ListItem>Single</asp:ListItem>   
                  <asp:ListItem>Married</asp:ListItem>
                  <asp:ListItem>Unmarried</asp:ListItem>    
              </asp:DropDownList>
          </div>
          <div class="col-9 py-1 wow fadeInUp" data-wow-delay="50ms">
              <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" Height="107px" placeholder="Enter Address"></asp:TextBox>
          </div>
            <h2 style="margin-right:50px">Insurance Information</h2>
        </div>
         

           <div class="col-12 col-sm-9 py-2 wow fadeInLeft">
              <asp:TextBox ID="txtinsucompny" runat="server" CssClass="form-control" placeholder="Insurance Company"></asp:TextBox>
          </div>
          <div class="col-12 col-sm-9 py-2 wow fadeInRight">
               <asp:TextBox ID="txtinsuId" runat="server" CssClass="form-control" placeholder="Insurance ID"></asp:TextBox>
          </div>

          <asp:Button ID="regi_patients" runat="server" Text="Register" class="btn btn-primary mt-3 wow zoomIn" OnClick="regi_patients_Click" />
        

    </div> <!-- .container -->
  </div> <!-- .page-section -->

</asp:Content>


<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">
      
    <footer class="page-footer">
    <div class="container">
      <div class="row px-md-3">
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Company</h5>
          <ul class="footer-menu">
            <li><a href="#">About Us</a></li>
            <li><a href="#">Career</a></li>
            <li><a href="#">Editorial Team</a></li>
            <li><a href="#">Protection</a></li>
          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>More</h5>
          <ul class="footer-menu">
            <li><a href="#">Terms & Condition</a></li>
            <li><a href="#">Privacy</a></li>
            <li><a href="#">Advertise</a></li>
            <li><a href="#">Join as Doctors</a></li>
          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Our partner</h5>
          <ul class="footer-menu">
            <li><a href="#">One-Fitness</a></li>
            <li><a href="#">One-Drugs</a></li>
            <li><a href="#">One-Live</a></li>
          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Contact</h5>
          <p class="footer-link mt-2">351 Willow Street Franklin, MA 02038</p>
          <a href="#" class="footer-link">701-573-7582</a>
          <a href="#" class="footer-link">healthcare@temporary.net</a>

          <h5 class="mt-3">Social Media</h5>
          <div class="footer-sosmed mt-3">
            <a href="#" target="_blank"><span class="mai-logo-facebook-f"></span></a>
            <a href="#" target="_blank"><span class="mai-logo-twitter"></span></a>
            <a href="#" target="_blank"><span class="mai-logo-google-plus-g"></span></a>
            <a href="#" target="_blank"><span class="mai-logo-instagram"></span></a>
            <a href="#" target="_blank"><span class="mai-logo-linkedin"></span></a>
          </div>
        </div>
      </div>

      <hr>

      <p id="copyright">Copyright &copy; 2020 <a href="https://macodeid.com/" target="_blank">MACode ID</a>. All right reserved</p>
    </div>
  </footer>

<script src="../assets/js/jquery-3.5.1.min.js"></script>

<script src="../assets/js/bootstrap.bundle.min.js"></script>

<script src="../assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

<script src="../assets/vendor/wow/wow.min.js"></script>

<script src="../assets/js/theme.js"></script>
  
</body>
</html>

</asp:Content>

