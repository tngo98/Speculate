<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="maxGuessPage.aspx.cs" Inherits="WDD_A05.maxGuessPage" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Hi-Lo Game</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css"/>
</head>

<body>
    <form id="maxGuessForm" runat="server"  class="center" >
        <header>
          <h1>Speculate🕵</h1>
          <div class="number">?</div>
        </header>
        <main>
          <section runat="server" class="maxGuess" id="maxguessSection">
            <h1 id="maxGuessText" runat="server"></h1>
            <br />
            <asp:TextBox class="maxGuessNum" ID="maxNumPrompt" runat="server"></asp:TextBox>
            <asp:Button class="btn submitMaxGuess" runat="server" CausesValidation="true" type="button" Text="Submit" OnClick="maxNumButton_OnClick"/>
            <asp:RequiredFieldValidator class="maxNumError" style="font-size: 24px" ID="numError" ControlToValidate="maxNumPrompt" ForeColor="Red" runat="server" Text="Error: Number must be entered." Display="Dynamic"></asp:RequiredFieldValidator>
          </section>
        </main>
    </form>
  </body>
</html>

<!-- OnClick="maxNumButton_OnClick" -->
