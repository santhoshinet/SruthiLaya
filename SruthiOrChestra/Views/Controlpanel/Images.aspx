<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<%@ Import Namespace="SruthiOrchestraDL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Images</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="loginContent">
        <%
            var fileList = (List<File>)ViewData["fileList"];
            int index = 1; %>
        <% if (fileList.Count > 0)
           {
        %>
        <form method="post" action="Checkout">
        <ul class="ul">
            <li>
                <h2>
                    List of images.</h2>
            </li>
            <li>
                <table id="Cart_Table" class="Cart_Table">
                    <thead>
                        <tr>
                            <th style="width: 30px;">
                                Sno
                            </th>
                            <th style="width: 140px;">
                                Picture
                            </th>
                            <th style="width: 340px;">
                                Url
                            </th>
                            <th style="width: 75px;">
                                Actions
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            foreach (var file in fileList)
                            {%>
                        <tr id='<%= file.Filename %>'>
                            <td>
                                <%= index++%>
                            </td>
                            <td>
                                <img alt="" class="product_image" src="/Photo/<%=file.ID%>" title="<%= file.Filename %>" />
                            </td>
                            <td>
                                /Photo/<%=file.ID%>
                            </td>
                            <td>
                                <a href="/DeleteImage/<%= file.ID %>" class="ViewProfile">Delete</a>
                            </td>
                        </tr>
                        <%
                            }%>
                    </tbody>
                </table>
            </li>
            <li>
                <input type="button" value="Add new image" onclick="window.location = '/controlpanel/addimage';" />
                <input type="button" value="Home" onclick="window.location = '/controlpanel';" />
            </li>
        </ul>
        </form>
        <%
            }
           else
           {%>
        <ul class="ul">
            <li>
                <h2>
                    There is no images uploaded yet.</h2>
            </li>
            <li>
                <input type="button" value="Add new image" onclick="window.location = '/controlpanel/addimage';" />
                <input type="button" value="Home" onclick="window.location = '/controlpanel';" />
            </li>
        </ul>
        <%}%>
    </div>
</asp:Content>