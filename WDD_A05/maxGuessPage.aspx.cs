using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WDD_A05
{
    public partial class maxGuessPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            maxGuessText.InnerText = "Enter max guess number, " + Session["name"].ToString() + "!";
        }

        protected void maxNumButton_OnClick(object sender, EventArgs e)
        {
            //here we are declaring a session variable as the contents namePrompt.text 
            Session["maxNum"] = maxNumPrompt.Text;

            //this will redirect us to another page
            Response.Redirect("~/guessNumPage.aspx");
        }
    }
}