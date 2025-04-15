<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TermsAndCondition.aspx.cs" Inherits="Project_Hospital.TermsAndCondition" %>
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

       <%-- <form action="#">
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
            <li class="nav-item">
              <a class="nav-link" href="About us.aspx">About Us</a>
            </li>
            <%--<li class="nav-item">
              <a class="nav-link" href="doctors.html">Doctors</a>
            </li>--%>
            <li class="nav-item active">
              <a class="nav-link" href="News.aspx">News</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.aspx">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="appointment.aspx">Make Appointment</a>
            </li>
             <li class="nav-item ">
              <a class="nav-link" href="FeedBackForm.aspx">Patient Feedback</a>
            </li>
               <li class="nav-item active">
               <a class="nav-link" href="TermsAndCondition.aspx">Terms and Condition</a>
            </li>
                          
            <li class="nav-item">
               <asp:Button ID="logout_btn" runat="server" Text="Logout" CssClass="btn btn-primary ml-lg-3" OnClick="logout_btn_Click"  />      
            </li>
         
          </ul>
        </div> <!-- .navbar-collapse -->
      </div> <!-- .container -->
    </nav>
  </header>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

   
    <style>
        .terms-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            margin: 40px auto;
            max-width: 850px;
        }

        .terms-title {
            font-size: 30px;
            font-weight: 700;
            color: #00ddc1;
            margin-bottom: 25px;
            text-align: center;
            text-transform: uppercase;
        }

        .terms-text {
            font-size: 16px;
            color: #333333;
            line-height: 1.7;
        }

        .terms-section {
            margin-bottom: 25px;
        }

        .terms-section h3 {
            color: #212529;
            font-size: 20px;
            margin-bottom: 10px;
            font-weight: 600;
        }

        .terms-section p {
            margin: 0;
        }
    </style>

    <div class="terms-container">
        <div class="terms-title">Terms and Conditions</div>

        <div class="terms-text">
            <div class="terms-section">
                <h3>1. Acceptance of Terms</h3>
                <p>By accessing or using our services, you agree to be bound by these terms and conditions. If you do not agree, please do not use our services.</p>
            </div>

            <div class="terms-section">
                <h3>2. Use of Services</h3>
                <p>Our platform provides healthcare appointment services for informational and booking purposes only. Misuse or unauthorized access is strictly prohibited.</p>
            </div>

            <div class="terms-section">
                <h3>3. Privacy Policy</h3>
                <p>All personal data submitted by users is handled in accordance with our privacy policy. We respect your privacy and are committed to protecting your personal information.</p>
            </div>

            <div class="terms-section">
                <h3>4. Changes to Terms</h3>
                <p>We may update or modify these terms at any time without prior notice. Please review this page periodically for the latest updates.</p>
            </div>

            <div class="terms-section">
                <h3>5. Contact Us</h3>
                <p>If you have any questions about these Terms and Conditions, please contact our support team through the details provided on our Contact page.</p>
            </div>

             <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" OnClick="LinkButton1_Click"  >Back</asp:LinkButton>
        </div>
    </div>

</asp:Content>



<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
