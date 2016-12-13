<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddDealer.aspx.cs" Inherits="Admin_AddDealer" %>

<%@ Register src="AdminHeader.ascx" tagname="AdminHeader" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dealer Registration</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/bootstrap-reset.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/style-responsive.css" rel="stylesheet" />
</head>
<body class="login-body">
    <div class="container">
      <form class="form-signin"  runat="server">
        <div>
            <uc1:AdminHeader ID="AdminHeader1" runat="server" />
        </div>
        <h2 class="form-signin-heading">Dealer Admission</h2>
        <div class="login-wrap">
            <p style="color:black">Enter Dealer details below</p>
            <asp:TextBox ID="fname"  CssClass="form-control" placeholder="Dealer First Name" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            
            <asp:TextBox ID="lname"  CssClass="form-control" placeholder="Dealer Last Name" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            
            <asp:TextBox ID="address" TextMode="MultiLine" CssClass="form-control" placeholder="Address" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            <br />
            <asp:TextBox ID="city" CssClass="form-control" placeholder="City/Town" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>

            <asp:TextBox ID="state" CssClass="form-control" placeholder="State" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            
            <asp:TextBox ID="zip" CssClass="form-control" placeholder="Pincode" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            
            <asp:TextBox ID="mobileno" CssClass="form-control" placeholder="Mobile No" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
           
            <asp:TextBox ID="emailid" CssClass="form-control" placeholder="Email Id" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            
            <asp:TextBox ID="password" CssClass="form-control" placeholder="Password" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            
            <asp:Button ID="btn_updateDealer" runat="server" CssClass="btn btn-lg btn-login btn-block" Text="Register" ValidationGroup="u_pd" OnClick="btn_updateDealer_Click" ></asp:Button>
            <asp:Label ID="lbl_display" runat="server" Text=""></asp:Label>
        </div>
      </form>
    </div>
</body>
</html>
