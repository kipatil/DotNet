﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgentHomePage.aspx.cs" Inherits="Admin_AdminHomePage" %>

<%@ Register src="AgentHeader.ascx" tagname="AgentHeader" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('http://localhost:15123/images/gold-texture.jpg'); background-repeat: no-repeat; background-attachment: fixed;">
    <form id="form1" runat="server">
    <div>
    
        <uc1:AgentHeader ID="AgentHeader1" runat="server" />
    
    </div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 518px; top: 62px; position: absolute; height: 27px; width: 543px" Text="Welcome To Agent Home Page"></asp:Label>
    </form>
</body>
</html>
