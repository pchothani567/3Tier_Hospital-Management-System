<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login_User.aspx.cs" Inherits="Project_Hospital.Login_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

   <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    

    <style>

        /* Global Styles */
body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    font-family: 'Times New Roman', serif; /* Ensuring Times New Roman */
    
    /* Background Image */
    background-image: url('/Admin/9067304.jpg'); /* Check if the path is correct */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
}

.register-container {
    background-color: rgba(32, 83, 117, 0.85); /* Semi-transparent for readability */
    padding: 38px;
    border-radius: 10px;
    text-align: center;
    color: white;
    width: 400px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    border: 2px solid #00bcd4;
    font-family: 'Times New Roman', serif; /* Apply to form */
}

h2 {
    margin-bottom: 20px;
    font-size: 26px; /* Slightly larger */
    font-weight: bold;
}

.custom-label {
    display: block;
    text-align: left;
    font-size: 20px; /* Bigger for readability */
    font-weight: bold;
    margin-top: 14px;
}

/* Common Input Styles */
.input-box, .input-boxe {
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    font-size: 18px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: white;
    color: black;
    font-family: 'Times New Roman', serif;
    outline: none;
    appearance: none; /* Removes default styling */
}

/* Placeholder Styling */
.input-box::placeholder {
    color: #777;
    font-size: 18px;
    font-weight: bold;
}

/* Focus Effect */
.input-box:focus, .input-boxe:focus {
    border-color: #007bff; /* Blue border on focus */
    box-shadow: 0px 4px 10px rgba(0, 114, 255, 0.5);
}

/* Dropdown Option Styling */
.input-boxe option {
    background-color: white;
    color: black;
}

/* Register Button */
.register-btn {
    width: 100%;
    padding: 14px;
    background: linear-gradient(to right, #0072ff, #00c6ff);
    color: white;
    font-size: 18px;
    border: 2px solid #0056b3;
    border-radius: 5px;
    cursor: pointer;
    font-weight: bold;
    margin-top: 18px;
    transition: 0.3s;
    font-family: 'Times New Roman', serif;
}

.register-btn:hover {
    background: linear-gradient(to right, #00c6ff, #0072ff);
    box-shadow: 0px 4px 10px rgba(0, 114, 255, 0.5);
    border-color: #004080;
}

/* Login Text */
.login-link {
    margin-top: 18px;
    font-size: 18px;
    font-weight: bold;
    font-family: 'Times New Roman', serif;
}

.login-link a {
    color: red;
    text-decoration: none;
    font-weight: bold;
    font-size: 18px;
}

.login-link a:hover {
    text-decoration: underline;
}


    </style>
</head>
<body>

    <div class="register-container">           
        <h2>Login Here</h2>

    <asp:Label ID="Label1" runat="server" CssClass="custom-label" Text="Username"></asp:Label>
    <asp:TextBox ID="txtunm" runat="server" CssClass="input-box" Placeholder="Username"></asp:TextBox>

    <asp:Label ID="Label2" runat="server" CssClass="custom-label" Text="Password"></asp:Label>
    <asp:TextBox ID="txtpwd" runat="server" CssClass="input-box" TextMode="Password" Placeholder="Password"></asp:TextBox>

    <asp:Label ID="Label3" runat="server" CssClass="custom-label" Text="Select Role"></asp:Label>
    <asp:DropDownList ID="ddlRole" runat="server" CssClass="input-boxe">
        <asp:ListItem Text="Select Role" Value="" />
       <%-- <asp:ListItem Text="Admin" Value="Admin" />--%>
        <asp:ListItem Text="User" Value="User" />
    </asp:DropDownList>

    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="register-btn" OnClick="Button1_Click"   />

        <div class="login-link">
                Don't have an account? <a href="Register_User.aspx">Register</a>
            </div>

        </div>

    </body>
</html>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
