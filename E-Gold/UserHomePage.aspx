<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHomePage.aspx.cs" Inherits="UserHomePage" %>
<%@ Register src="UserHeader.ascx" tagname="UserHeader" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            z-index: 1;
            left: 231px;
            top: 120px;
            position: absolute;
        }
    </style>
</head>
<body style="background-image: url('images/gold-texture.jpg');  background-attachment: fixed; background-position: center center; background-color: #FFFF66">
    <form id="form1" runat="server">
        <div>
            <uc1:UserHeader ID="UserHeader1" runat="server" />
        </div>
    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <h1>&nbsp;</h1>
        <h1>&nbsp; Welcome To E-Gold Site </h1>
    </div><h1>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1"></asp:Label></h1>
    </form>
</body>
</html>