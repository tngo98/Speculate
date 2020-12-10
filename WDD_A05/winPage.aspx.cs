/*
    File: winPage.aspx.cs
	Project: PROG-2001 - Assignment 5 Hi-Lo in ASP.NET on the Server
	Programmers: Isaiah Andrews, Tommy Ngo
	Final Version: 11/20/2020
    Description: This file implements the handlers for the page_load and resetButton_OnClick events.
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WDD_A05
{
    public partial class winPage : System.Web.UI.Page
    {
        private string _userName;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Set session variable to userName
            _userName = Session["name"].ToString();
        }

        protected void resetButton_OnClick(object sender, EventArgs e)
        {
            //Remove current session variables
            Session.Remove("minNum");
            Session.Remove("maxNum");
            Session.Remove("randomNum");

            //Redirect the user back to the maxNum page
            Response.Redirect("~/maxNumPage.aspx");
        }
    }
}