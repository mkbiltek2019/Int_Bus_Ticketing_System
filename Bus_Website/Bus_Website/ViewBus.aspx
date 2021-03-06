﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewBus.aspx.cs" Inherits="Bus_Website.ViewBus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Admin:: View Bus</title>
    <style type="text/css">
        #Reset1
        {
            width: 67px;
            margin-left: 16px;
        }
    </style>
    <img src="bus.png" alt="JS Logo" style="width: 282px; height: 159px; margin-top: 0px" />
    <img src="logo1.PNG" alt="MMU Logo" style="width: 1169px; height: 159px; margin-left: 3px;
        margin-top: 0px" />&nbsp;
</head>
<body>

            <div style='position: absolute; z-index: -20; left: 0; top: 0; width: 100%; height: 200%'>
            <img src="imagea3.jpg" style='width: 100%; height: 100%' alt='[]' />
        </div>
        <link rel='stylesheet' type='text/css' href='styles.css' />
        <br />
        <div id='cssmenu'>
            <ul>
                <li><a href="Admin.aspx"><span>Home</span></a></li>
                <li class='has-sub'><a href='#'><span>User Profile</span></a>
                    <ul>
                        <li class='has-sub'><a href="EditProfile(Admin).aspx">Edit Profile</a>
                            <li class='has-sub'><a href="ChangePassword(Admin).aspx"><span>Change Password</span></a>
                                <li class='has-sub'><a href="ViewProfile(Admin).aspx"><span>View Profile</span></a>
                                    <li class='has-sub'><a href="Delete User.aspx"><span>Delete User</span></a> </li>
                    </ul>
                </li>
                <li class='has-sub'><a href='#'><span>Tickets</span></a>
                    <ul>
                        <li class='has-sub'><a href="SelectTripAdmin.aspx"><span>Purchase Ticket(e-Ticket)</span></a>
                            <li class='has-sub'><a href="ViewTicketAdmin.aspx"><span>View Ticket</span></a>
                            </li>
                    </ul>
                    <li class='has-sub'><a href='#'><span>Trips</span></a>
                        <ul>
                            <li class='has-sub'><a href="Check Trip(Admin).aspx"><span>Check Trip Schedule</span></a>
                            </li>
                            <li class='has-sub'><a href="AddTrip.aspx"><span>Add Trip</span></a> </li>
                            <li class='has-sub'><a href="Edittrip2.aspx"><span>Edit Trip </span></a></li>
                            <li class='has-sub'><a href="ViewTrip.aspx"><span>View Trip </span></a></li>
                            <li class='has-sub'><a href="DeleteTrip.aspx"><span>Delete Trip </span></a></li>
                        </ul>
                        <li class='has-sub'><a href='#'><span>Bus Company</span></a>
                            <ul>
                                <li class='has-sub'><a href="Add BusCompany.aspx"><span>Add Bus Company</span></a>
                                </li>
                                <li class='has-sub'><a href="ViewBusCompany.aspx"><span>View Bus Company </span></a>
                                </li>
                                 <li class='has-sub'><a href="DeleteBusCompany.aspx"><span>Delete Bus Company </span></a></li>
                            </ul>
                            <li class='has-sub'><a href='#'><span>Bus</span></a>
                                <ul>
                                    <li class='has-sub'><a href="AddBus.aspx"><span>Add Bus </span></a></li>
                                    <li class='has-sub'><a href="ViewBus.aspx"><span>View Bus</span></a> </li>
                                    <li class='has-sub'><a href="DeleteBus.aspx"><span>Delete Bus</span></a> </li>
                                </ul>
                                <li class='has-sub'><a href="ContactUsAdmin.aspx"><span>Contact Us</span></a> </li>
                                <li><a href="Homepage.aspx"><span>Logout</span></a></li>
            </ul>
        </div>
        <form id="form1" runat="server">
        <br />
        <br />
        <center>
            <font color=" black " size=" 8 "><strong>View Bus</strong></font></center>
        <br />
        <br />
        <br />
        <font color=" black " size=" 5 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Bus Company&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="margin-left: 34px"
                Text="View" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="bus_id" DataSourceID="SqlDataSource1"
                Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                HorizontalAlign="Left" style="margin-left: 126px">
                <ItemTemplate>
                    Bus ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="bus_idLabel" runat="server" Text='<%# Eval("bus_id") %>' />
                    <br />
                    <br />
                    Bus Company Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="company_nameLabel" runat="server" Text='<%# Eval("company_name") %>' />
                    <br />
                    <br />
                    Trip ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="trip_idLabel" runat="server" Text='<%# Eval("trip_id") %>' />
                    <br />
                    <br />
                    Bus Registration Number&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="reg_numLabel" runat="server" Text='<%# Eval("reg_num") %>' />
                    <br />
                    <br />
                    Departure&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="boarding_pointLabel" runat="server" Text='<%# Eval("boarding_point") %>' />
                    <br />
                    <br />
                    Destination&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="arrival_pointLabel" runat="server" Text='<%# Eval("arrival_point") %>' />
                    <br />
                    <br />
                    Departure Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="depart_dateLabel" runat="server" Text='<%# Eval("depart_date") %>' />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online_BusConnectionString %>"
                SelectCommand="sp_ViewBus2" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="buscompanyid" PropertyName="SelectedValue"
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </font>&nbsp;<div>
        </div>
        </form>
    </body>
</html>
