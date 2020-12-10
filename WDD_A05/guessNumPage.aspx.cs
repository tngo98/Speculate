using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WDD_A05
{
    public partial class guessNumPage : System.Web.UI.Page
    {
        public int max;
        public int min;
        private int secretNumber;
        private int userScore = 100;
        private int highScore = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            max = int.Parse(Session["maxNum"].ToString());

            if (Session["minNum"] == null || Session["hasWon"] != null)
            {
                min = 1;
                Session["hasWon"] = null;
            }
            else
            {
                min = int.Parse(Session["minNum"].ToString());
            }
            

            message.InnerText = "Start guessing, " + Session["name"].ToString() + "!";
            number.InnerText = min.ToString() + "-" + max.ToString();
            againButton.Visible = false;
            

            Random rand = new Random();

            secretNumber = rand.Next(min, max);
            if (Session["highScore"] != null)
            {
                label2.Text = Session["highScore"].ToString();
            }
        }

        protected void guessButton_OnClick(object sender, EventArgs e)
        {
            //here we are declaring a session variable as the contents namePrompt.text 
            string guess = guessNumPrompt.Text;


            if (guess == "")
            {
                number.InnerText = min.ToString() + "-" + max.ToString();
                message.InnerText = "⛔️ No number!";
            }
            else if (int.Parse(guess) == secretNumber)
            {
                message.InnerText = "🎉 Correct Number!";
                number.InnerText = secretNumber.ToString();
                bodyID.Attributes.Add("style", "background-color: #FD9A24");

                if (userScore > highScore)
                {
                    highScore = userScore;
                    label2.Text = "🥇 Highscore: " + highScore;
                }
                Session["hasWon"] = "true";
                guessButton.Visible = false;
                againButton.Visible = true;
            }
            else if (int.Parse(guess) != secretNumber)
            {
                if (userScore > 1)
                {
                    if (int.Parse(guess) > max || int.Parse(guess) < min)
                    {
                        message.InnerText = "⛔ Guess is out of range!";
                    }
                    else
                    {
                        if (int.Parse(guess) > secretNumber)
                        {
                            max = int.Parse(guess);
                            max -= 1;
                            Session["maxNum"] = max;
                            number.InnerText = min.ToString() + "-" + max.ToString();
                        }
                        else if (int.Parse(guess) < secretNumber)
                        {
                            min = int.Parse(guess);
                            min += 1;
                            Session["minNum"] = min;
                            number.InnerText = min.ToString() + "-" + max.ToString();
                        }
                        message.InnerText = int.Parse(guess) > secretNumber ? "📈 Too high!" : "📉 Too low!";
                        userScore = userScore - 5;
                        label1.Text = "💯 Score: " + userScore;
                    }
                }
                else if (userScore < 1)
                {
                    message.InnerText = "💥 You lost the game!";
                    label1.Text = "💯 Score: " + 0;
                }
            }
        }
        protected void againButton_OnClick(object sender, EventArgs e)
        {
            //here we are declaring a session variable as the contents namePrompt.text 
            Session["highScore"] = guessNumPrompt.Text;

            //this will redirect us to another page
            Response.Redirect("~/maxGuessPage.aspx");
        }
    }
}




