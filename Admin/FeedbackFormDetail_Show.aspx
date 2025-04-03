<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FeedbackFormDetail_Show.aspx.cs" Inherits="Project_Hospital.Admin.FeedbackFormDetail" %>
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
            <li class="nav-item ">
              <a class="nav-link" href="Appointment_Details.aspx">Appointment Details</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="patient_details.aspx">Patient Details</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="FeedbackFormDetail_Show.aspx">Review Detail</a>
            </li> 
            <li class="nav-item">
              <a class="nav-link" href="Register_New_Patients.aspx">Register New Patient</a>
            </li> 
            
            <%--<li class="nav-item">    --%>         
           
            <%--</li>--%>
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
            <li class="breadcrumb-item active" aria-current="page">Feedback</li>
          </ol>
        </nav>
        <h1 class="font-weight-normal">Rating & Feedback Details</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->

</asp:Content>

<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">


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
                        
                        <asp:Label ID="Label17" runat="server" Text='<%# Eval("Doc_Dept_Id") %>'></asp:Label>
                        
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Doctor_Name_Id">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Doctor_Name_Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="PatientName">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("PatientName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="EmailAddress">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("EmailAddress") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="PhoneNo">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("PhoneNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="DateOfVisit">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("DateOfVisit") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="TimeOfAppointment">
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("TimeOfAppointment") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Speciality">
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("Speciality") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="WaitingTime">
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("WaitingTime") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="DoctorFriendliness">
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("DoctorFriendliness") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="HospitalCleanliness">
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("HospitalCleanliness") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="OverallExperience">
                    <ItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("OverallExperience") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Suggestion">
                    <ItemTemplate>
                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("Suggestion") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="AdditionalComments">
                    <ItemTemplate>
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("AdditionalComments") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="AcceptTerm">
                    <ItemTemplate>
                        <asp:Label ID="Label16" runat="server" Text='<%# Eval("AcceptTerm") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt" Font-Bold="True" ForeColor="Red" OnCommand="LinkButton1_Command">DELETE</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

    </center>
</asp:Content>

