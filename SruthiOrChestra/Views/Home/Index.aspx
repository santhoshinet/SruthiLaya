<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Suresh Sruthilaya</title>
</head>
<body style="background-color: Black; text-align: center; padding: 0px; margin: 0px;
    height: 100%;">
    <% var width = "100%";
       var height = "810px";
    %>
    <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" height='<%= height %>'
        width="<%= width %>" style="z-index: 0;" style="background-color: #fff;" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"
        id="Object1">
        <param name="movie" value="/Images/suresh.swf" height='<%= height %>' width="<%= width %>"
            style="background-color: #fff; z-index: 0;" />
        <param name="quality" value="high" height='<%= height %>' width="<%= width %>" style="background-color: #fff;
            z-index: 0;" />
        <param name="bgcolor" value="#000" height='<%= height %>' width="<%= width %>" style="background-color: #fff;
            z-index: 0;" />
        <embed src="/Images/suresh.swf" quality="high" bgcolor="#fff" name="mymoviename"
            style="background-color: #fff; z-index: 0;" height='<%= height %>' width="<%= width %>"
            align="" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"> </embed>
    </object>
</body>
</html>