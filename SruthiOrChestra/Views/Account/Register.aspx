﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SruthiOrChestra.Models.RegisterModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Register
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="loginContent">
        <% using (Html.BeginForm())
           { %>
        <ul class="ul">
            <li>
                <h2>
                    Create a New Account</h2>
            </li>
            <li>
                <%= Html.ValidationSummary(true, "Account creation was unsuccessful. Please correct the errors and try again.") %>
            </li>
            <li>
                <%= Html.LabelFor(m => m.UserName) %>
            </li>
            <li>
                <%= Html.TextBoxFor(m => m.UserName) %>
                <%= Html.ValidationMessageFor(m => m.UserName) %>
            </li>
            <li>
                <%= Html.LabelFor(m => m.Email) %>
            </li>
            <li>
                <%= Html.TextBoxFor(m => m.Email) %>
                <%= Html.ValidationMessageFor(m => m.Email) %>
            </li>
            <li>
                <%= Html.LabelFor(m => m.Password) %>
            </li>
            <li>
                <%= Html.PasswordFor(m => m.Password) %>
                <%= Html.ValidationMessageFor(m => m.Password) %>
            </li>
            <li>
                <%= Html.LabelFor(m => m.ConfirmPassword) %>
            </li>
            <li>
                <%= Html.PasswordFor(m => m.ConfirmPassword) %>
                <%= Html.ValidationMessageFor(m => m.ConfirmPassword) %>
            </li>
            <li>
                <input type="submit" value="Register" />
            </li>
        </ul>
        <% } %>
    </div>
</asp:Content>