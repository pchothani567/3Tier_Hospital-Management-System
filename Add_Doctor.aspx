<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add_Doctor.aspx.cs" Inherits="Project_Hospital.Admin.Add_Doctor" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
           
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
             <%--<li class="nav-item">    --%>         
              <asp:Button ID="Button1" runat="server" Text="Logout" CssClass="btn btn-primary ml-lg-3" OnClick="Button1_Click" />      
           <%-- </li>--%>
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
            <li class="nav-item active">
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
            <li class="nav-item">
              <a class="nav-link" href="Register_New_Patients.aspx">Register New Patient</a>
            </li>           
            
          </ul>
        </div> <!-- .navbar-collapse -->
      </div> <!-- .container -->
    </nav>
  </header>

</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
   
    <div class="page-banner overlay-dark bg-image" style="background-image: url(../assets/img/blog/AddDoctor_img.jpg);">
    <div class="banner-section">
      <div class="container text-center wow fadeInUp">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Doctors</li>
          </ol>
        </nav>
        <h1 class="font-weight-normal">Doctors</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->

           <!-- .page-section -->

  <div class="page-section">
    <div class="container">
      <h1 class="text-center wow fadeInUp">Add Doctor</h1>

      <%--<form class="main-form">--%>
        <div class="row mt-5 ">

          <div class="col-12 col-sm-9 py-2 wow fadeInLeft">       
              <asp:TextBox ID="txtfnm" runat="server" class="form-control" placeholder="Full name"></asp:TextBox>
          </div>

         <div class="col-12 col-sm-9 py-2 wow fadeInRight">
               <asp:TextBox ID="txteml" runat="server" CssClass="form-control" placeholder="Enter Your Email id..."></asp:TextBox>
          </div>

          <div class="col-12 col-sm-9 py-2 wow fadeInRight" data-wow-delay="300ms">
                <asp:DropDownList ID="DrpDegree" runat="server" CssClass="custom-select">
                    <asp:ListItem>Degree</asp:ListItem>
                    <asp:ListItem>MS</asp:ListItem>
                    <asp:ListItem>MD</asp:ListItem>
                </asp:DropDownList>          

           </div>

            <%--//Add Department (Adddepartment.cs / AddDepartment.aspx) using admin side added through dropdownlist--%>

              <div class="col-12 col-sm-9 py-2 wow fadeInRight" data-wow-delay="300ms">
              <asp:DropDownList ID="DrpSpeciality" runat="server" CssClass="custom-select" OnSelectedIndexChanged="DrpSpeciality_SelectedIndexChanged">
                  <asp:ListItem>---Select Speciality (Department) ---</asp:ListItem>
                  <%--<asp:ListItem>General Health</asp:ListItem>
                  <asp:ListItem>Cardiology</asp:ListItem>
                  <asp:ListItem>Dental</asp:ListItem>
                  <asp:ListItem>Neurology</asp:ListItem>
                  <asp:ListItem>orthopaedics</asp:ListItem>--%>
              </asp:DropDownList>
              </div>

            <div class="col-12 col-sm-9 py-2 wow fadeInUp" >
                <asp:DropDownList ID="DrpGen" runat="server" CssClass="custom-select">
                    <asp:ListItem>Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>            
            </div>

            <div class="col-12 col-sm-9 py-2 wow fadeInLeft" data-wow-delay="300ms">
              <asp:TextBox ID="txtDob" runat="server" type="date" CssClass="form-control"></asp:TextBox>
            </div>

          <div class="col-12 col-sm-9 py-2 wow fadeInRight">
              <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control">+91-</asp:TextBox>
          </div>


            <div>
            &nbsp;&nbsp &nbsp;<asp:FileUpload ID="photo" runat="server" />
            </div>
        
        </div>
          
          <asp:Button ID="Ad_doctor" runat="server" class="btn btn-primary mt-3 wow zoomIn" Text="Add Doctor" OnClick="Ad_doctor_Click" />
           <br />
           <br />
          
     <%-- </form>--%>
    </div> <!-- .container -->
  </div> <!-- .page-section -->
 
    <br />

      <h1 class="text-center wow fadeInUp">Added Doctor Details</h1>
    <br /><br />

    <center>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Doc_Dept_Id">
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("Doc_Dept_Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Degree">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Degree") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Department (Speciality)">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Speciality") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Dob">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Dob") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone">
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Photo">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" Height="50" Width="50" runat="server" ImageUrl='<%# Eval("Photo") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt" Font-Bold="True" Font-Overline="False" Font-Underline="False">Edit</asp:LinkButton>
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

        <asp:Button ID="Button2" runat="server" Text="Print Doctor Detail" CssClass="btn btn-primary  mt-2" OnClick="Button2_Click" />
        <br />

        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
    </center>

    

 
</asp:Content>


<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
              
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

    <%--  <p id="copyright">Copyright &copy; 2020 <a href="https://macodeid.com/" target="_blank">MACode ID</a>. All right reserved</p>--%>
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

