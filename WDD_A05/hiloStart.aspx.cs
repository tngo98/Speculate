/*
    File: hiloStart.aspx.cs
	Project: PROG-2001 - Assignment 5 Hi-Lo in ASP.NET on the Server
	Programmers: Isaiah Andrews, Tommy Ngo
	Final Version: 11/20/2020
    Descrition: This file implements the handler for the submitName_OnClick event.
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WDD_A05
{
    public partial class hiloStart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitName_OnClick(object sender, EventArgs e)
        {
            //here we are declaring a session variable as the contents namePrompt.text 
            Session["name"] = namePrompt.Text;

            //this will redirect us to another page
            Response.Redirect("~/maxGuessPage.aspx");
        }
    }
}