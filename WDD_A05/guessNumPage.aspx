<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="guessNumPage.aspx.cs" Inherits="WDD_A05.guessNumPage" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Hi-Lo Game</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css"/>
</head>

<body id="bodyID" runat="server">
    <form id="guessForm" runat="server"  class="center" >
        <header>
          <h1>Speculate🕵</h1>
          <div id="number" runat="server" class="number">?</div>
        </header>
        <main>
            <section class="mainGame" runat="server" id="mainGame">
                <h1 id="message" runat="server" class="message"></h1>
                <br />
                <asp:TextBox class="guess" id = "guessNumPrompt"  runat="server" ></asp:TextBox>
                <asp:Button class="btn check" ID = "guessButton" runat="server" text = "Make this guess" CausesValidation="true"  OnClick="guessButton_OnClick"/>
                <asp:Button class="btn again" ID = "againButton" runat="server" text = "Again" CausesValidation="true"  OnClick="againButton_OnClick"/>
                <div class="score-location" runat="server">
                  <asp:label id="label1" runat="server" style="font-size: 24px" class="label-score">💯 Score: 100</asp:label>
                  <asp:label id="label2" runat="server" style="font-size: 24px" class="label-highscore">
                    🥇 Highscore: 0
                  </asp:label>
                </div>
                <asp:RequiredFieldValidator class="guessError" style="font-size: 24px" ID="numPromptValidator" runat="server" ControlToValidate="guessNumPrompt" ForeColor ="Red" ErrorMessage="Error: Number must be entered." Display="Dynamic"></asp:RequiredFieldValidator>
            </section>
        </main>
    </form>
  </body>
</html>
