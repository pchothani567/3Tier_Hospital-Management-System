<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Project_Hospital.Index" %>
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
                                <a href="#"><span class="mai-call text-primary"></span>+00 123 4455 6666</a> <span class="divider">|</span> <a href="#"><span class="mai-mail text-primary"></span>onehealth@gmail.com</a>

                                <%-- User Name--%> <%--RegistrationTable=>Table--%>
                  <span class="divider">|</span>
                  <a href="#"><span class="mai-person text-primary"></span>
                  <asp:Label ID="lbl_welcome" runat="server" Text="Label"></asp:Label></a>

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
                            <li class="nav-item active"><a class="nav-link" href="Index.aspx">Home</a> </li>
                            <li class="nav-item"><a class="nav-link" href="About us.aspx">About Us</a> </li>
                            <li class="nav-item"><a class="nav-link" href="News.aspx">News</a> </li>
                            <li class="nav-item"><a class="nav-link" href="contact.aspx">Contact</a> </li>
                            <li class="nav-item"><a class="nav-link" href="appointment.aspx">Make Appointment</a> </li>
                            <li class="nav-item"><a class="nav-link" href="FeedBackForm.aspx">Patient Feedback</a> </li>
                            <li class="nav-item"><a class="nav-link" href="TermsAndCondition.aspx">Terms and Condition</a></li>
                            <li class="nav-item"><asp:Button ID="logout_btn" runat="server" Text="Logout" CssClass="btn btn-primary ml-lg-3" OnClick="logout_btn_Click" /></li>
                         <%--   <li class="nav-item"><a class="btn btn-primary ml-lg-3" href="#">Login / Register</a> </li>--%>
                        </ul>
                    </div>
                    <!-- .navbar-collapse -->
                </div>
                <!-- .container -->
            </nav>
        </header>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div class="page-hero bg-image overlay-dark" style="background-image: url(../assets/img/bg_image_1.jpg);">
        <div class="hero-section">
            <div class="container text-center wow zoomIn">
                <span class="subhead">Let's make your life happier</span>
                <h1 class="display-4">Healthy Living</h1>
                <a href="contact.aspx" class="btn btn-primary">Let's Consult</a>
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
        </div>
        <!-- .page-section -->

        <div class="page-section pb-0">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 py-3 wow fadeInUp">
                        <h1>Welcome to Your Health
                            <br>Center</h1>
                        <p class="text-grey mb-4">
                            Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Accusantium aperiam earum ipsa eius, inventore nemo labore eaque porro consequatur ex aspernatur. Explicabo, excepturi accusantium! Placeat voluptates esse ut optio facilis!</p>
                        <a href="About us.aspx" class="btn btn-primary">Learn More</a>
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
    </div>
    <!-- .bg-light -->

   

     
    <div class="page-section">
  <div class="container">
    <h1 class="text-center mb-5 wow fadeInUp">Our Doctors</h1>

    <div class="owl-carousel wow fadeInUp" id="doctorSlideshow">
      <div class="col-lg-30 py-15 wow zoomIn">
        <center>
          <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" CellPadding="10" CellSpacing="5">
            <ItemTemplate>
              <div class="item">
                <div class="card-doctor text-center">

                  <asp:Image ID="Image1" runat="server" Height="190px" Width="200px" ImageUrl='<%# "Admin/" + Eval("Photo") %>' CssClass="doctor-img" />
                  
                  <br /><br />

                  <asp:Label ID="Label1" runat="server" CssClass="text-xl mb-0 d-block" Text='<%# Eval("Name") %>'></asp:Label>
                  
                  <asp:Label ID="Label2" runat="server" CssClass="text-sm text-grey d-block mb-3" Text='<%# Eval("Speciality") %>'></asp:Label>

                  <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-primary mt-2" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_detailv">View Detail</asp:LinkButton>

                </div>
              </div>
            </ItemTemplate>
          </asp:DataList>
        </center>
      </div>
    </div>

    <br /><br />

    <%-- Pagination --%>
    <div class="text-center">
     <div class="d-flex justify-content-between  mt-4">
  <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-primary" OnClick="LinkButton3_Click">Previous</asp:LinkButton>

  <asp:LinkButton ID="LinkButton4" runat="server" CssClass="btn btn-primary" OnClick="LinkButton4_Click">Next</asp:LinkButton>
</div>

    </div>
  </div>
</div>

  <%--  <div class="page-section">
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


   


    <div class="page-section bg-light">
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
                    <a href="News.aspx" class="btn btn-primary">Read More</a>
                </div>
            </div>
        </div>
    </div>
    <!-- .page-section -->

            </asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
                 <!-- .page-section -->

  
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
            <%--<p id="copyright">
                Copyright &copy; 2020 <a href="https://macodeid.com/" target="_blank">MACode ID</a>. All right reserved</p>--%>
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

