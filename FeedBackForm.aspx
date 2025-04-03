<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FeedBackForm.aspx.cs" Inherits="Project_Hospital.Admin.FeedBackForm" %>
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
            <li class="nav-item">
              <a class="nav-link" href="News.aspx">News</a>
            </li>
            <li class="nav-item ">
              <a class="nav-link" href="contact.aspx">Contact</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="appointment.aspx">Make Appointment</a>
            </li>
             <li class="nav-item active">
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

<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
    
    <div class="page-banner overlay-dark bg-image" style="background-image: url(../assets/img/bg_image_1.jpg);">
    <div class="banner-section">
        <div class="container text-center wow fadeInUp">
            <nav aria-label="Breadcrumb">
                <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Rating & Review</li>
                </ol>
            </nav>
            <h1 class="font-weight-normal">Feedback</h1>
        </div>
    </div>
</div>

<div class="container my-5">
    <h1 class="text-center mb-4">Rating & Review</h1>
    <div class="card p-4 shadow-lg rounded">
        <div class="row g-3">

            <div class="col-md-6">
                <asp:Label runat="server" CssClass="form-label" Text="Patient Name"></asp:Label>           
                <asp:TextBox ID="txtPatientNm" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="col-md-6">
                <asp:Label runat="server" CssClass="form-label" Text="Email Address"></asp:Label>
                <asp:TextBox ID="txtEmlAddress" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="col-md-6">
                <asp:Label runat="server" CssClass="form-label" Text="Phone No."></asp:Label>
                <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="form-control"></asp:TextBox>              
            </div>

            <div class="col-md-6">
                <asp:Label runat="server" CssClass="form-label" Text="Date of Visit"></asp:Label>
                  <asp:TextBox ID="txtDateOfVst" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>               
            </div>

            <div class="col-md-6">
                <asp:Label runat="server" CssClass="form-label" Text="Time of Appointment"></asp:Label>
                  <asp:TextBox ID="txtAptTime" runat="server" CssClass="form-control" TextMode="Time"></asp:TextBox>             
            </div>


            <div class="col-md-6">
                <asp:Label runat="server" CssClass="form-label" Text="Select Doctor's Name"></asp:Label>
                 <asp:DropDownList ID="drpDoctorName" runat="server" CssClass="form-select form-control" OnSelectedIndexChanged="drpDoctorName_SelectedIndexChanged">

                 </asp:DropDownList>
            </div>


            <div class="col-md-6">
                <asp:Label runat="server" CssClass="form-label" Text="Speciality (Department)"></asp:Label>
                <asp:DropDownList ID="DrpSpeciality" runat="server" CssClass="form-select form-control" OnSelectedIndexChanged="DrpSpeciality_SelectedIndexChanged">
                   <%-- <asp:ListItem>--- Select Speciality (Department) ---</asp:ListItem>
                    <asp:ListItem>Cardiology</asp:ListItem>
                    <asp:ListItem>Neurology</asp:ListItem>
                    <asp:ListItem>Orthopedics</asp:ListItem>
                    <asp:ListItem>Pediatrics</asp:ListItem>
                    <asp:ListItem>Dermatology</asp:ListItem>--%>
                </asp:DropDownList>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-md-6">
                <asp:Label runat="server" CssClass="form-label fw-bold" Text="Waiting Time"></asp:Label>
                <asp:RadioButtonList ID="RblWatingTm" runat="server" RepeatDirection="Horizontal" CssClass="d-flex gap-3 mt-1">
                    <asp:ListItem>Short</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Long</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div class="col-md-6">
                <asp:Label runat="server" CssClass="form-label fw-bold" Text="Doctor’s Friendliness & Communication"></asp:Label>
                <asp:RadioButtonList ID="RblDoctorCommunication" runat="server" RepeatDirection="Horizontal" CssClass="d-flex gap-3 mt-1">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Poor</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="col-md-6">
                <asp:Label runat="server" CssClass="form-label fw-bold" Text="Clinic/Hospital Cleanliness"></asp:Label>
                <asp:RadioButtonList ID="RblHospitCleanliness" runat="server" RepeatDirection="Horizontal" CssClass="d-flex gap-3 mt-1">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Poor</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="col-md-6">
                <asp:Label runat="server" CssClass="form-label fw-bold" Text="Overall Experience"></asp:Label>
                <asp:RadioButtonList ID="RblOvlExp" runat="server" RepeatDirection="Horizontal" CssClass="d-flex gap-3 mt-1">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Poor</asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </div>

        <div class="row mt-3">
            <div class="col-md-6">
                <asp:Label runat="server" CssClass="form-label" Text="Suggestions for Improvement"></asp:Label>
                <asp:TextBox runat="server" ID="txtSuggestion" CssClass="form-control" TextMode="MultiLine" placeholder="Enter your suggestions.."></asp:TextBox>
            </div>
            <div class="col-md-6">
                <asp:Label runat="server" CssClass="form-label" Text="Additional Comments"></asp:Label>
                <asp:TextBox runat="server" ID="txtAdtCmt" CssClass="form-control" TextMode="MultiLine" placeholder="Enter additional comments.."></asp:TextBox>
            </div>
        </div>

        <div class="col-12 text-center mt-3"> 
        <asp:CheckBoxList ID="chkTerms" runat="server" CssClass="form-check-label ms-2">
            <asp:ListItem>Yes</asp:ListItem>             
        </asp:CheckBoxList>
         I agree to the
        <asp:LinkButton ID="LinkButton1" runat="server" class="text-primary" OnClick="LinkButton1_Click">Terms and conditions</asp:LinkButton>
        </div>

        <%--<div class="col-12 text-center mt-3">           
            <asp:Label ID="lblTerms" runat="server" CssClass="form-check-label ms-2" AssociatedControlID="chkTerms">
                I agree to the <a href="#" class="text-primary">terms and conditions</a>
            </asp:Label>
        </div>--%>

        <div class="col-12 text-center mt-4">      
            <asp:Button ID="SubReview" runat="server" Text="Submit Review" CssClass="btn btn-primary w-10 mt-2" OnClick="SubReview_Click"  />          
       </div>
    </div>
</div>





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
                    <p class="footer-link mt-2">
                        351 Willow Street Franklin, MA 02038</p>
                    <a href="#" class="footer-link">701-573-7582</a> <a href="#" class="footer-link">healthcare@temporary.net</a>
                    <h5 class="mt-3">Social Media</h5>
                    <div class="footer-sosmed mt-3">
                        <a href="#" target="_blank"><span class="mai-logo-facebook-f"></span></a><a href="#" target="_blank"><span class="mai-logo-twitter"></span></a><a href="#" target="_blank"><span class="mai-logo-google-plus-g"></span></a><a href="#" target="_blank"><span class="mai-logo-instagram"></span></a><a href="#" target="_blank"><span class="mai-logo-linkedin"></span></a>
                    </div>
                </div>
            </div>
            <hr>
            <p id="copyright">
                Copyright &copy; 2020 <a href="https://macodeid.com/" target="_blank">MACode ID</a>. All right reserved</p>
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

