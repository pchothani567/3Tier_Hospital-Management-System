<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DoctorDetail_View.aspx.cs" Inherits="Project_Hospital.DoctorDetail_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
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


