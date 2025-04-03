<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="appointment.aspx.cs" Inherits="Project_Hospital.appointment" %>
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
              <a href="#"><span class="mai-mail text-primary"></span> mail@example.com</a>

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

        <form action="#">
          <div class="input-group input-navbar">
            <div class="input-group-prepend">
              <span class="input-group-text" id="icon-addon1"><span class="mai-search"></span></span>
            </div>
            <input type="text" class="form-control" placeholder="Enter keyword.." aria-label="Username" aria-describedby="icon-addon1">
          </div>
        </form>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupport" aria-controls="navbarSupport" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupport">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="Index.aspx">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="About us.aspx">About Us</a>
            </li>
            <%--<li class="nav-item">
              <a class="nav-link" href="doctors.html">Doctors</a>
            </li>--%>
            <li class="nav-item">
              <a class="nav-link" href="News.aspx">News</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.aspx">Contact</a>
            </li>
             <li class="nav-item active">
              <a class="nav-link" href="appointment.aspx">Make Appointment</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="FeedBackForm.aspx">Patient Feedback</a>
            </li>
            <li class="nav-item">
               <asp:Button ID="logout_btn" runat="server" Text="Logout" CssClass="btn btn-primary ml-lg-3" OnClick="logout_btn_Click" />      
            </li>
            <%--<li class="nav-item">
              <a class="btn btn-primary ml-lg-3" href="#">Login / Register</a>
            </li>--%>
          </ul>
        </div> <!-- .navbar-collapse -->
      </div> <!-- .container -->
    </nav>
  </header>     

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <div class="page-banner overlay-dark bg-image" style="background-image: url(../assets/img/bg_image_1.jpg);">
    <div class="banner-section">
      <div class="container text-center wow fadeInUp">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Appointment</li>
          </ol>
        </nav>
        <h1 class="font-weight-normal">Make an Appointment</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->

  <div class="page-section">
    <div class="container">
      <h1 class="text-center wow fadeInUp">Appointment</h1>

     <%-- <form class="contact-form mt-5">--%>
        <div class="row mb-3">
          <div class="col-sm-6 py-2 wow fadeInLeft">
            <label for="fullName">Name</label>
            <%--<input type="text" id="fullName" class="form-control" placeholder="Full name..">--%>
              <asp:TextBox ID="txtfnm" runat="server" class="form-control" placeholder="Full name.."></asp:TextBox>
          </div>

          <div class="col-sm-6 py-2 wow fadeInRight">
            <label for="emailAddress">Email</label>
           <%-- <input type="text" id="emailAddress" class="form-control" placeholder="Email address..">--%>
              <asp:TextBox ID="txteml" runat="server" class="form-control" placeholder="Email address.."></asp:TextBox>
          </div>

          <div class="col-6 py-2 wow fadeInUp">
            <label for="subject">Appointment Date</label>
            <%--<input type="text" id="subject" class="form-control" placeholder="Enter subject..">--%>
              <asp:TextBox ID="date" runat="server" type="date" class="form-control" ></asp:TextBox>
          </div>

          <div class="col-6 py-2 wow fadeInRight">
            <label for="subject">Apointment Time</label>         
              <asp:TextBox ID="time" runat="server" type="time" class="form-control" ></asp:TextBox>
          </div>        

           <%--Symptoms--%>
           <div class="col-6" >
             <asp:Label ID="Label13" runat="server" Text="Symptoms"></asp:Label>
                <asp:CheckBoxList ID="chkSympt" runat="server" CssClass="form-check" RepeatDirection="Horizontal">
                   <asp:ListItem>Fever</asp:ListItem> 
                   <asp:ListItem>Cough</asp:ListItem>  
                   <asp:ListItem>Headache</asp:ListItem>  
                   <asp:ListItem>Fatigue</asp:ListItem>
                   <asp:ListItem>Other</asp:ListItem>  
                 </asp:CheckBoxList>
             </div>         
            

      
          <%-- BloodGroup--%>
                  <div class="col-6 py-2 wow fadeInLeft" >
                      <asp:Label ID="Label11" runat="server" CssClass="form-label" Text="BloodGroup"></asp:Label>
                              <asp:DropDownList ID="DropDownListBloodGroup" runat="server" CssClass="form-select form-control" >  <%--class="form-control bg-light border-0 px-2"--%>
                                  <asp:ListItem>--Select BloodGroup--</asp:ListItem>
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


            <div class="col-sm-6 py-2 wow fadeInRight">
            <label for="emailAddress">Phone Number</label>
           <%-- <input type="text" id="emailAddress" class="form-control" placeholder="Email address..">--%>
              <asp:TextBox ID="txtphone" runat="server" class="form-control">+91-</asp:TextBox>
          </div>

        </div>

       <%-- <button type="submit" class="btn btn-primary wow zoomIn">Send Message</button>--%>
          <asp:Button ID="btn_apoointment" runat="server" Text="BOOK AN APPOINTMENT" class="btn btn-primary wow zoomIn" OnClick="btn_apoointment_Click" />
     <%-- </form>--%>
    </div>
  </div>
 
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">


    
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

<script src="../assets/js/google-maps.js"></script>

<script src="../assets/js/theme.js"></script>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIA_zqjFMsJM_sxP9-6Pde5vVCTyJmUHM&callback=initMap"></script>
  
</body>
</html>

</asp:Content>
