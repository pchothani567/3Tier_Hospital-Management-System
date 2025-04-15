<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Project_Hospital.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="copyright" content="MACode ID, https://macodeid.com/"><title>One Health - Medical Center HTML5 Template</title>
        <link rel="stylesheet" href="../assets/css/maicons.css">
        <link rel="stylesheet" href="../assets/css/bootstrap.css">
        <link rel="stylesheet" href="../assets/vendor/owl-carousel/css/owl.carousel.css">
        <link rel="stylesheet" href="../assets/vendor/animate/animate.css">
        <link rel="stylesheet" href="../assets/css/theme.css">
    </head>
    <body>

  <!-- Back to top button -->
        <div class="back-to-top">
        </div>
        <header>
            <div class="topbar">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 text-sm">
                            <div class="site-info">
                                <a href="#"><span class="mai-call text-primary"></span>+00 123 4455 6666</a> <span class="divider">|</span> <a href="#"><span class="mai-mail text-primary"></span>mail@example.com</a>
                            </div>
                        </div>
                        <div class="col-sm-4 text-right text-sm">
                            <div class="social-mini-button">
                                <a href="#"><span class="mai-logo-facebook-f"></span></a><a href="#"><span class="mai-logo-twitter"></span></a><a href="#"><span class="mai-logo-dribbble"></span></a><a href="#"><span class="mai-logo-instagram"></span></a>
                            </div>
                        </div>
                    </div>
                    <!-- .row -->
                </div>
                <!-- .container -->
            </div>
            <!-- .topbar -->

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
                            <li class="nav-item "><a class="nav-link" href="index.html">Home</a> </li>
                            <li class="nav-item"><a class="nav-link" href="about.html">About Us</a> </li>
                            <li class="nav-item"><a class="nav-link" href="doctors.html">Doctors</a> </li>
                            <li class="nav-item"><a class="nav-link" href="blog.html">News</a> </li>
                            <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a> </li>
                             <li class="nav-item active"><a class="nav-link" href="WebForm2.aspx">Registration</a> </li>

                            <li class="nav-item"><a class="btn btn-primary ml-lg-3" href="#">Login / Register</a> </li>
                        </ul>
                    </div>
                    <!-- .navbar-collapse -->
                </div>
                <!-- .container -->
            </nav>
        </header>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <%--<div class="page-hero bg-image overlay-dark" style="background-image: url(../assets/img/bg_image_1.jpg);">
        <div class="hero-section">
            <div class="container text-center wow zoomIn">
                <span class="subhead">Let's make your life happier</span>
                <h1 class="display-4">Healthy Living</h1>
                <a href="#" class="btn btn-primary">Let's Consult</a>
            </div>
        </div>
    </div>
    <div class="bg-light">
        <div class="page-section py-3 mt-md-n5 custom-index">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-4 py-3 py-md-0">
                        <div class="card-service wow fadeInUp">
                            <div class="circle-shape bg-secondary text-white">
                                <span class="mai-chatbubbles-outline"></span>
                            </div>
                            <p>
                                <span>Chat</span> with a doctors</p>
                        </div>
                    </div>
                    <div class="col-md-4 py-3 py-md-0">
                        <div class="card-service wow fadeInUp">
                            <div class="circle-shape bg-primary text-white">
                                <span class="mai-shield-checkmark"></span>
                            </div>
                            <p>
                                <span>One</span>-Health Protection</p>
                        </div>
                    </div>
                    <div class="col-md-4 py-3 py-md-0">
                        <div class="card-service wow fadeInUp">
                            <div class="circle-shape bg-accent text-white">
                                <span class="mai-basket"></span>
                            </div>
                            <p>
                                <span>One</span>-Health Pharmacy</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
        <!-- .page-section -->

<%--        <div class="page-section pb-0">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 py-3 wow fadeInUp">
                        <h1>Welcome to Your Health
                            <br>Center</h1>
                        <p class="text-grey mb-4">
                            Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Accusantium aperiam earum ipsa eius, inventore nemo labore eaque porro consequatur ex aspernatur. Explicabo, excepturi accusantium! Placeat voluptates esse ut optio facilis!</p>
                        <a href="about.html" class="btn btn-primary">Learn More</a>
                    </div>
                    <div class="col-lg-6 wow fadeInRight" data-wow-delay="400ms">
                        <div class="img-place custom-img-1">
                            <img src="../assets/img/bg-doctor.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- .bg-light -->
    </div>--%>
    <!-- .bg-light -->

   <%-- <div class="page-section">
        <div class="container">
            <h1 class="text-center mb-5 wow fadeInUp">Our Doctors</h1>
            <div class="owl-carousel wow fadeInUp" id="doctorSlideshow">
                <div class="item">
                    <div class="card-doctor">
                        <div class="header">
                            <img src="../assets/img/doctors/doctor_1.jpg" alt="">
                            <div class="meta">
                                <a href="#"><span class="mai-call"></span></a><a href="#"><span class="mai-logo-whatsapp"></span></a>
                            </div>
                        </div>
                        <div class="body">
                            <p class="text-xl mb-0">
                                Dr. Stein Albert</p>
                            <span class="text-sm text-grey">Cardiology</span>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card-doctor">
                        <div class="header">
                            <img src="../assets/img/doctors/doctor_2.jpg" alt="">
                            <div class="meta">
                                <a href="#"><span class="mai-call"></span></a><a href="#"><span class="mai-logo-whatsapp"></span></a>
                            </div>
                        </div>
                        <div class="body">
                            <p class="text-xl mb-0">
                                Dr. Alexa Melvin</p>
                            <span class="text-sm text-grey">Dental</span>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card-doctor">
                        <div class="header">
                            <img src="../assets/img/doctors/doctor_3.jpg" alt="">
                            <div class="meta">
                                <a href="#"><span class="mai-call"></span></a><a href="#"><span class="mai-logo-whatsapp"></span></a>
                            </div>
                        </div>
                        <div class="body">
                            <p class="text-xl mb-0">
                                Dr. Rebecca Steffany</p>
                            <span class="text-sm text-grey">General Health</span>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card-doctor">
                        <div class="header">
                            <img src="../assets/img/doctors/doctor_3.jpg" alt="">
                            <div class="meta">
                                <a href="#"><span class="mai-call"></span></a><a href="#"><span class="mai-logo-whatsapp"></span></a>
                            </div>
                        </div>
                        <div class="body">
                            <p class="text-xl mb-0">
                                Dr. Rebecca Steffany</p>
                            <span class="text-sm text-grey">General Health</span>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card-doctor">
                        <div class="header">
                            <img src="../assets/img/doctors/doctor_3.jpg" alt="">
                            <div class="meta">
                                <a href="#"><span class="mai-call"></span></a><a href="#"><span class="mai-logo-whatsapp"></span></a>
                            </div>
                        </div>
                        <div class="body">
                            <p class="text-xl mb-0">
                                Dr. Rebecca Steffany</p>
                            <span class="text-sm text-grey">General Health</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <%--<div class="page-section bg-light">
        <div class="container">
            <h1 class="text-center wow fadeInUp">Latest News</h1>
            <div class="row mt-5">
                <div class="col-lg-4 py-2 wow zoomIn">
                    <div class="card-blog">
                        <div class="header">
                            <div class="post-category">
                                <a href="#">Covid19</a>
                            </div>
                            <a href="blog-details.html" class="post-thumb">
                            <img src="../assets/img/blog/blog_1.jpg" alt=""> </a>&nbsp;</div>
                        <div class="body">
                            <h5 class="post-title"><a href="blog-details.html">List of Countries without Coronavirus case</a></h5>
                            <div class="site-info">
                                <div class="avatar mr-2">
                                    <div class="avatar-img">
                                        <img src="../assets/img/person/person_1.jpg" alt="">
                                    </div>
                                    <span>Roger Adams</span>
                                </div>
                                <span class="mai-time"></span>1 week ago
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 py-2 wow zoomIn">
                    <div class="card-blog">
                        <div class="header">
                            <div class="post-category">
                                <a href="#">Covid19</a>
                            </div>
                            <a href="blog-details.html" class="post-thumb">
                            <img src="../assets/img/blog/blog_2.jpg" alt=""> </a>&nbsp;</div>
                        <div class="body">
                            <h5 class="post-title"><a href="blog-details.html">Recovery Room: News beyond the pandemic</a></h5>
                            <div class="site-info">
                                <div class="avatar mr-2">
                                    <div class="avatar-img">
                                        <img src="../assets/img/person/person_1.jpg" alt="">
                                    </div>
                                    <span>Roger Adams</span>
                                </div>
                                <span class="mai-time"></span>4 weeks ago
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 py-2 wow zoomIn">
                    <div class="card-blog">
                        <div class="header">
                            <div class="post-category">
                                <a href="#">Covid19</a>
                            </div>
                            <a href="blog-details.html" class="post-thumb">
                            <img src="../assets/img/blog/blog_3.jpg" alt=""> </a>&nbsp;</div>
                        <div class="body">
                            <h5 class="post-title"><a href="blog-details.html">What is the impact of eating too much sugar?</a></h5>
                            <div class="site-info">
                                <div class="avatar mr-2">
                                    <div class="avatar-img">
                                        <img src="../assets/img/person/person_2.jpg" alt="">
                                    </div>
                                    <span>Diego Simmons</span>
                                </div>
                                <span class="mai-time"></span>2 months ago
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 text-center mt-4 wow zoomIn">
                    <a href="blog.html" class="btn btn-primary">Read More</a>
                </div>
            </div>
        </div>
    </div>--%>
    <!-- .page-section -->

            </asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
                 <!-- .page-section -->

   <%-- <div class="page-section">
        <div class="container">
            <h1 class="text-center wow fadeInUp">Make an Appointment</h1>
            <form class="main-form">
                <div class="row mt-5 ">
                    <div class="col-12 col-sm-6 py-2 wow fadeInLeft">
                        <input type="text" class="form-control" placeholder="Full name">
                    </div>
                    <div class="col-12 col-sm-6 py-2 wow fadeInRight">
                        <input type="text" class="form-control" placeholder="Email address..">
                    </div>
                    <div class="col-12 col-sm-6 py-2 wow fadeInLeft" data-wow-delay="300ms">
                        <input type="date" class="form-control">
                    </div>
                    <div class="col-12 col-sm-6 py-2 wow fadeInRight" data-wow-delay="300ms">
                        <select name="departement" id="departement" class="custom-select">
                            <option value="general">General Health</option>
                            <option value="cardiology">Cardiology</option>
                            <option value="dental">Dental</option>
                            <option value="neurology">Neurology</option>
                            <option value="orthopaedics">Orthopaedics</option>
                        </select>
                    </div>
                    <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
                        <input type="text" class="form-control" placeholder="Number..">
                    </div>
                    <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
                        <textarea name="message" id="message" class="form-control" rows="6" placeholder="Enter message.."></textarea>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary mt-3 wow zoomIn">
                    Submit Request
                </button>
            </form>
        </div>
    </div>--%>
    <!-- .page-section -->

   <%-- <div class="page-section banner-home bg-image" style="background-image: url(../assets/img/banner-pattern.svg);">
        <div class="container py-5 py-lg-0">
            <div class="row align-items-center">
                <div class="col-lg-4 wow zoomIn">
                    <div class="img-banner d-none d-lg-block">
                        <img src="../assets/img/mobile_app.png" alt="">
                    </div>
                </div>
                <div class="col-lg-8 wow fadeInRight">
                    <h1 class="font-weight-normal mb-3">Get easy access of all features using One Health Application</h1>
                    <a href="#">
                    <img src="../assets/img/google_play.svg" alt=""></a> <a href="#" class="ml-2">
                    <img src="../assets/img/app_store.svg" alt=""></a>
                </div>
            </div>
        </div>
    </div>--%>
    <!-- .banner-home -->

    <%--RegistrationForm Code using ASP.NET tag--%>


     <div class="page-banner overlay-dark bg-image" style="background-image: url(../assets/img/bg_image_1.jpg);">
    <div class="banner-section">
      <div class="container text-center wow fadeInUp">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Registration</li>
          </ol>
        </nav>
        <h1 class="font-weight-normal">Registration</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->

   <div class="page-section">
    <div class="container">
        <%--<h1 class="text-center wow fadeInUp">Registration do here</h1>--%>

<%--        <form class="contact-form mt-5">--%>
        <div class="row mb-3">

             <%-- Name--%>
              <div class="col-6 py-2 wow fadeInLeft">
                   <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                   <asp:TextBox ID="txtFn" runat="server" class="form-control bg-light border-0 px-4" placeholder="Full Name..."></asp:TextBox>
               </div>
                
               <%-- EmailAddress--%>
               <div class="col-6 py-2 wow fadeInRight"> 
                   <asp:Label ID="Label2" runat="server" Text="EmailAddress"></asp:Label>
                    <asp:TextBox ID="txtEml" runat="server" class="form-control bg-light border-0 px-4" placeholder="Email Address.." ></asp:TextBox>
                </div>
                                          
               <%--Password--%>
                <div class="col-6 py-2 wow fadeInRight">   
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                     <asp:TextBox ID="txtPwd" runat="server" placeholder="Enter your password" TextMode="Password" pattern="^(?=.*\d)(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9])\S{8,}$" title="Password must contain at least one number, one alphabet, one symbol, and be at least 8 characters long" class="form-control bg-light border-0 px-4" style="height: 55px;"></asp:TextBox>
                </div>
                        
                <%--Confirm Password--%>
                 <div class="col-6 py-2 wow fadeInRight"> 
                     <asp:Label ID="Label4" runat="server" Text="Confirm Password"  ></asp:Label>
                     <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password" class="form-control bg-light border-0 px-4" placeholder="Repassword" style="height: 55px;"></asp:TextBox>
                  </div>

                 <%-- City--%>
                  <div class="col-6 py-2 wow fadeInRight">
                      <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
                        <asp:TextBox ID="txtCity" runat="server" class="form-control bg-light border-0 px-4" placeholder="Enter City..." style="height: 55px;"></asp:TextBox>
                  </div>
                        
                 <%--Pincode--%>
                 <div class="col-6 py-2 wow fadeInRight" >
                     <asp:Label ID="Label6" runat="server" Text="Pincode"></asp:Label>
                      <asp:TextBox ID="txtPincode" runat="server" placeholder="Pincode" TextMode="Number"  maxlength="6" class="form-control bg-light border-0 px-4" style="height: 55px;" ></asp:TextBox>
                  </div>
                         
                 <%-- Appointment Date--%>
                 <div class="col-6 py-2 wow fadeInRight" >
                      <asp:Label ID="Label7" runat="server" Text="Appointment Date"></asp:Label>
                      <asp:TextBox ID="txtDate" runat="server" placeholder="Enter Appointment Date" TextMode="Date" class="form-control bg-light border-0 px-4"></asp:TextBox>
                  </div>
                                     

                 <%--  Appointment Time--%>
                 <div class="col-6 py-2 wow fadeInRight">
                     <asp:Label ID="Label8" runat="server" Text="Appointment Time"></asp:Label>
                      <asp:TextBox ID="txtTime" runat="server" class="form-control bg-light border-0 px-4" placeholder="Enter Appointment Time" TextMode="Time"></asp:TextBox>
                 </div>
                        

                 <%-- Mobile Number--%>
                  <div class="col-6 py-2 wow fadeInRight" >
                      <asp:Label ID="Label9" runat="server" Text="Mobile Number"></asp:Label>
                       <asp:TextBox ID="txtMobileNumber" runat="server" class="form-control bg-light border-0 px-4" placeholder="Enter mobile number.." TextMode="Phone" maxlength="10" pattern="[0-9]{10}"></asp:TextBox>
                   </div>
                          
                 <%--Address--%>
                  <div class="col-6 py-2 wow fadeInRight" >
                      <asp:Label ID="Label10" runat="server" Text="Address" ></asp:Label>
                      <asp:TextBox ID="txtAds" runat="server" class="form-control bg-light border-0 px-4 py-3"  placeholder="Address" TextCode="Text"></asp:TextBox>
                  </div>
  
                 <%-- BloodGroup--%>
                  <div class="col-6 py-2 wow fadeInLeft" >
                      <asp:Label ID="Label11" runat="server" Text="BloodGroup"></asp:Label>
                              <asp:DropDownList ID="DropDownListBloodGroup" runat="server" style="height: 35px;" class="form-control bg-light border-0 px-2">
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

                    <%-- Gender--%>
                    <div class="col-6" >
                        <asp:Label ID="Label12" runat="server" Text="Gender"></asp:Label>
                              <asp:RadioButtonList ID="RadioButtonListGnd" runat="server" RepeatDirection="Horizontal">
                                  <asp:ListItem>Male</asp:ListItem>
                                  <asp:ListItem>Female</asp:ListItem>
                                  <asp:ListItem>Other</asp:ListItem>
                              </asp:RadioButtonList>
                    </div>
                          
                   <%--Symptoms--%>
                    <div class="col-6" >
                        <asp:Label ID="Label13" runat="server" Text="Symptoms"></asp:Label>
                              <asp:CheckBoxList ID="chkSymptoms" runat="server" CssClass="form-check" RepeatDirection="Horizontal">
                                  <asp:ListItem>Fever</asp:ListItem>
                                  <asp:ListItem>Cough</asp:ListItem>
                                  <asp:ListItem>Headache</asp:ListItem>
                                  <asp:ListItem>Fatigue</asp:ListItem>
                              </asp:CheckBoxList>
                    </div>
                         
                    <%--Image--%>
                    <div class="col-6 py-2 wow fadeInLeft" >
                        <asp:Label ID="Label14" runat="server" Text="Image"></asp:Label>
                          <asp:FileUpload ID="fldimg" runat="server" />
                    </div>
        
                    <%--Submit--%>
                     <div class="col-12" >
                         <asp:Label ID="Label15" runat="server" Text="Submit"></asp:Label>
                          <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-secondary w-100 py-3" OnClick="Button1_Click1" />
                         <br />
                         <br />
                         <br />
                         <%--<center>--%>
                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                             <Columns>
                                 <asp:TemplateField HeaderText="Id">
                                     <ItemTemplate>
                                         <asp:Label ID="Label16" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Name">
                                     <ItemTemplate>
                                         <asp:Label ID="Label17" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="EmailAddress">
                                     <ItemTemplate>
                                         <asp:Label ID="Label18" runat="server" Text='<%# Eval("EmailAddress") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Password">
                                     <ItemTemplate>
                                         <asp:Label ID="Label19" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="ConfirmPassword">
                                     <ItemTemplate>
                                         <asp:Label ID="Label20" runat="server" Text='<%# Eval("ConfirmPassword") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="City">
                                     <ItemTemplate>
                                         <asp:Label ID="Label21" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Pincode">
                                     <ItemTemplate>
                                         <asp:Label ID="Label22" runat="server" Text='<%# Eval("Pincode") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Image">
                                     <ItemTemplate>
                                         <asp:Image ID="Image1" runat="server" Height="50" Width="50" ImageUrl='<%# Eval("Image") %>' />
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Edit">
                                     <ItemTemplate>
                                         <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt">Edit</asp:LinkButton>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Delete">
                                     <ItemTemplate>
                                         <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt">Delete</asp:LinkButton>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="AppointmentDate">
                                     <ItemTemplate>
                                         <asp:Label ID="Label23" runat="server" Text='<%# Eval("AppointmentDate") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="AppointmentTime">
                                     <ItemTemplate>
                                         <asp:Label ID="Label24" runat="server" Text='<%# Eval("AppointmentTime") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="MobileNumber">
                                     <ItemTemplate>
                                         <asp:Label ID="Label25" runat="server" Text='<%# Eval("MobileNumber") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Address">
                                     <ItemTemplate>
                                         <asp:Label ID="Label26" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="BloodGroup">
                                     <ItemTemplate>
                                         <asp:Label ID="Label27" runat="server" Text='<%# Eval("BloodGroup") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Gender">
                                     <ItemTemplate>
                                         <asp:Label ID="Label28" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Fever">
                                     <ItemTemplate>
                                         <asp:Label ID="Label29" runat="server" Text='<%# Eval("Fever") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Cough">
                                     <ItemTemplate>
                                         <asp:Label ID="Label30" runat="server" Text='<%# Eval("Cough") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Headache">
                                     <ItemTemplate>
                                         <asp:Label ID="Label31" runat="server" Text='<%# Eval("Headache") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Fatigue">
                                     <ItemTemplate>
                                         <asp:Label ID="Label32" runat="server" Text='<%# Eval("Fatigue") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                             </Columns>
                         </asp:GridView>
                             <%--</center>--%>
                    </div>

          </form>
               </div>
            </div>
 
<script src="../assets/js/jquery-3.5.1.min.js"></script>

<script src="../assets/js/bootstrap.bundle.min.js"></script>

<script src="../assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

<script src="../assets/vendor/wow/wow.min.js"></script>

<script src="../assets/js/theme.js"></script>
  
</body>
</html>
            </asp:Content>

