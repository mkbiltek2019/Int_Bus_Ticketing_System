﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangeResetPassword.aspx.cs" Inherits="Bus_Website.ChangeResetPassword" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Change Reset Password</title>
    <style type="text/css">
        #Reset1
        {
            height: 25px;
            width: 73px;
            margin-top: 0px;
        }
        .style1
        {
            font-family: Arial;
        }
        .style2
        {
            font-size: x-large;
        }
        .style3
        {
            font-size: large;
        }
    </style>
    <img src="bus.png" alt="JS Logo" style="width: 282px; height: 159px; margin-top: 0px" />
    <img src="logo1.PNG" alt="MMU Logo" style="width: 1169px; height: 159px; margin-left: 3px;
        margin-top: 0px" />&nbsp;
    <link rel='stylesheet' type='text/css' href='styles.css' />
    <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
</head>
<body>
    <form id="form1" runat="server">
    <div style='position: absolute; z-index: -20; left: 0; top: 0; width: 100%; height: 200%'>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <img src="images1.jpg" style='width: 100%; height: 1147px' alt='[]' />
    </div>
    <div id='cssmenu'>
        <ul>
            <li><a href="Homepage.aspx"><span style="font-weight: 700">Home</span></a></li>
            <li class='has-sub'><a href='#'><span style="font-weight: 700">User Profile</span></a>
                <ul>
                    <li class='has-sub'><a href="Homepage.aspx">Sign in</a>
                        <li class='has-sub'><a href="Registration.aspx"><span>Registration</span></a>
                </ul>
                <li class='has-sub'><a href="ContactUs(home).aspx"><span style="font-weight: 700">Contact
                    Us</span></a> </li>
        </ul>
    </div>
    <center>
        <font color=" black " size=" 8 ">
            <p>
                <strong>Change Password</strong></p>  </font>
        <p class="style1" style="text-align: left">
                <strong><span class="style2">&nbsp;&nbsp; </span><span class="style3">&nbsp;&nbsp;&nbsp;&nbsp; Please enter your 
                new Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</span>&nbsp;<font color=" black " size=" 8 ">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        </p>
        <p class="style1" style="text-align: left">
                <strong><span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please confirm your new Password&nbsp;&nbsp;&nbsp; :</span>&nbsp;&nbsp;&nbsp;
                <font color=" black " size=" 8 ">
                <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                </font>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox1" ControlToValidate="TextBox2" 
                    ErrorMessage="* Your password does not match"></asp:CompareValidator>
                </strong>
        </p>
        <p class="style1" style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <strong><font color=" black " size=" 8 ">
                <asp:Button ID="rst_password" runat="server" Text="Save" 
                    Width="149px" />
                </font> </strong>
        </p>
        <p class="style1" style="text-align: left">
                &nbsp;</p>
        <p class="style1" style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" 
                    style="font-weight: 700; font-size: large;" Text="Label"></asp:Label>
        </p>
        <p class="style1" style="text-align: left">
                &nbsp;</p>
        <p class="style1" style="text-align: left">
                &nbsp;</p>
        <p class="style1" style="text-align: left">
                &nbsp;</p>
    </center>
   
    <font color=" black " size=" 5 ">
    </form>
</body>
</html>
