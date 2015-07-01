﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;


namespace Bus_Website
{
    public partial class CheckTripDetailsAdmin : System.Web.UI.Page
    {
        Login trip = new Login();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["boarding_point"] != null)
            {
                Label1.Text = Session["boarding_point"].ToString();
            }


            if (Session["arrival_point"] != null)
            {
                Label2.Text = Session["arrival_point"].ToString();
            }



            if (Session["depart_date"] != null)
            {
                Label3.Text = Session["depart_date"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}