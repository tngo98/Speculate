<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hiloStart.aspx.cs" Inherits="WDD_A05.hiloStart" %>

<!--
    File: hiloStart.aspx
	Project: PROG-2001 - Assignment 5 Hi-Lo in ASP.NET on the Server
	Programmers: Isaiah Andrews, Tommy Ngo
	Final Version: 11/20/2020
    Description: This file implements the html for the start of the game.
-->

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Hi-Lo Game</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css"/>
</head>

<body>
    <form id="hiloForm" runat="server"  class="center" >
        <header>
          <h1>Speculate🕵</h1>
          <div class="number">?</div>
        </header>
        <main>
          <section runat="server" class="namePrompt" id="nameSection">
            <h1>What's your name?</h1>
            <br />
            <asp:TextBox class="name" ID="namePrompt" runat="server"></asp:TextBox>
            <asp:button class="btn submitName" ID="submitName" runat="server" CausesValidation="true" type="button" Text="Submit" OnClick="submitName_OnClick"/>
            <asp:RequiredFieldValidator class="nameError" style="font-size: 24px" ID="nameError" runat="server" ControlToValidate="namePrompt" ForeColor="Red" ErrorMessage="Error: Name not entered." Display="Dynamic"></asp:RequiredFieldValidator>
          </section>
        </main>
    </form>
  </body>
</html>
