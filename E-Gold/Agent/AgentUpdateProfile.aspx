<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgentUpdateProfile.aspx.cs" Inherits="Agent_AgentUpdateProfile" %>

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

    <style type="text/css">
        .auto-style1 {
            display: block;
            width: 100%;
            height: 34px;
            font-size: 14px;
            line-height: 1.428571429;
            color: #c2c2c2;
            vertical-align: middle;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: none;
            -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            left: 0px;
            top: 0px;
            border: 1px solid #e2e2e4;
            padding: 6px 12px;
            background-color: #fff;
            background-image: none;
        }
    </style>

</head>
<body class="login-body">
    <div class="container">
      <form class="form-signin"  runat="server">
        <h2 class="form-signin-heading">Registration Now</h2>
        <div class="login-wrap">
            <p style="color:black">Enter your personal details below</p>
            <asp:TextBox ID="name"  CssClass="form-control" placeholder="Agent Name" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            
            <asp:TextBox ID="address" TextMode="MultiLine" CssClass="form-control" placeholder="Address" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            <br />
            <asp:TextBox ID="city" CssClass="form-control" placeholder="City/Town" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>

            <asp:TextBox ID="state" CssClass="form-control" placeholder="State" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            
            <asp:TextBox ID="zip" CssClass="form-control" placeholder="zip" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            
            <asp:TextBox ID="mobileno" CssClass="form-control" placeholder="Mobile No" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
           
            <asp:TextBox ID="emailid" CssClass="form-control" placeholder="Email Id" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            
            <asp:TextBox ID="password" CssClass="auto-style1" placeholder="Password" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            
            <asp:Button ID="btn_updateAgent" runat="server" CssClass="btn btn-lg btn-login btn-block" Text="Update" ValidationGroup="u_pd" OnClick="btn_updateAgent_Click" ></asp:Button>
            <asp:Label ID="lbl_display" runat="server" Text=""></asp:Label>
        </div>
      </form>
    </div>
</body>
</html>