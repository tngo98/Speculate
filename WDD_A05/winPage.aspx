<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="winPage.aspx.cs" Inherits="WDD_A05.winPage" %>

<!--
    File: winPage.aspx
	Project: PROG-2001 - Assignment 5 Hi-Lo in ASP.NET on the Server
	Programmers: Isaiah Andrews, Tommy Ngo
	Final Version: 11/20/2020
    Description: This file implements the html for the win condition page.
-->

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Hi-Lo Game</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css"/>
</head>

<body>
    <form id="nameForm" runat="server">
        <!-- This is the table that formats the columns and rows of the UI components -->
        <table class="mainTable">
            <thead>
            <!-- This is the header for the Hi-Lo game -->
            <tr>
                <th class="mt-header" colspan="2"><h1>Hi-Lo Game</h1></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <!-- This is the user prompt for winning the game -->
                <td class="mt-#instruct">
                    <strong>
                        You win!! You guessed the number!!
                    </strong>
                </td>
                <td class="mt-#content">
                    <!-- This is the UI components for the play again submission -->
                    <div id="section4">
                        <asp:Button ID ="resetButton" runat="server" text = "Play Again" CausesValidation="true"  OnClick="resetButton_OnClick"/>
                    </div>
                </td>
            </tr>
            <tr>
                <td></td>
                <td class="mt-#errInstruct">
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
