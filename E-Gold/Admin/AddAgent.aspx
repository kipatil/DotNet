<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddAgent.aspx.cs" Inherits="Admin_AddAgent" %>

<%@ Register src="AdminHeader.ascx" tagname="AdminHeader" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/bootstrap-reset.css" rel="stylesheet" />
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/style-responsive.css" rel="stylesheet" />
    
</head>
<body class="login-body">
    <div class="container">
    <form id="form" runat="server" class="form-signin">
    <div>
        <uc1:AdminHeader ID="AdminHeader1" runat="server" />
    </div>
        <h2 class="form-signin-heading">Agent Admission</h2>
        <div class="login-wrap">
            <p style="color:black">Enter Agent details below</p>
            <asp:TextBox ID="name"  CssClass="form-control" placeholder="Agent Name" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            
            <asp:TextBox ID="address" TextMode="MultiLine" CssClass="form-control" placeholder="Address" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            <br />
            <asp:TextBox ID="city" CssClass="form-control" placeholder="City/Town" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>

            <asp:TextBox ID="state" CssClass="form-control" placeholder="State" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            
            <asp:TextBox ID="zip" CssClass="form-control" placeholder="zip" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            
            <asp:TextBox ID="mobileno" CssClass="form-control" placeholder="Mobile No" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
           
            <asp:TextBox ID="emailid" CssClass="form-control" placeholder="Email Id" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            
            <asp:TextBox ID="password" CssClass="form-control" placeholder="Password" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            
            <asp:Button ID="btn_AddAgent" runat="server" CssClass="btn btn-lg btn-login btn-block" Text="Register" ValidationGroup="u_pd" OnClick="btn_AddAgent_Click" ></asp:Button>
            <br />
            <asp:Label ID="lbl_display" runat="server" Text=""></asp:Label>
        </div>
        </form>
         </div>
</body>
</html>