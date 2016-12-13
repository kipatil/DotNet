<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserUpdateProfile.aspx.cs" Inherits="UserUpdateProfile" %>

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
            <asp:TextBox ID="name"  CssClass="form-control" placeholder="Full Name" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Name Cant Be Blank" ControlToValidate="name"></asp:RequiredFieldValidator>
            
            <asp:TextBox ID="dob" CssClass="form-control" placeholder="Date of Birth" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="DOB Cant Be Blank" ControlToValidate="dob"></asp:RequiredFieldValidator>
            
            <asp:TextBox ID="address" CssClass="form-control" placeholder="Address" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="address Cant be blank" ControlToValidate="address"></asp:RequiredFieldValidator>
            
            <span id="gender">Gender</span><input checked type="radio" name="gender" value="Male" /> Male
             <input type="radio" name="gender" value="Female" /> Female
            <asp:TextBox ID="state" CssClass="form-control" placeholder="State" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="state Cant Be Blank" ControlToValidate="state"></asp:RequiredFieldValidator>
            
            <asp:TextBox ID="city" CssClass="form-control" placeholder="City/Town" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="City Cant Be Blank" ControlToValidate="city"></asp:RequiredFieldValidator>
            
            <asp:TextBox ID="zip" CssClass="form-control" placeholder="zip" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Pincode Cant Be Blank" ControlToValidate="zip"></asp:RequiredFieldValidator>
            
            <asp:TextBox ID="mobileno" CssClass="form-control" placeholder="Mobile No" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="MobileNo Cant Be Blank" ControlToValidate="mobileno"></asp:RequiredFieldValidator>
            
            <asp:TextBox ID="emailid" CssClass="form-control" placeholder="Email Id" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Emailid Cant Be Blank" ControlToValidate="emailid"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailid" ErrorMessage="Invalid Emailid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

            <asp:TextBox ID="password" CssClass="auto-style1" placeholder="Password" runat="server" autofocus="" ForeColor="Black"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Password Cant Be Blank" ControlToValidate="password"></asp:RequiredFieldValidator>

            <asp:TextBox ID="Password3" CssClass="form-control" placeholder="Confirm Password" runat="server" autofocus="" ForeColor="Black"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Password Cant Be Blank" ControlToValidate="Password3"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Shouldn't Match" ControlToCompare="password" ControlToValidate="Password3"></asp:CompareValidator>
            
            <label class="checkbox">
                <input type="checkbox" value="agree this condition"> I agree to the Terms of Service and Privacy Policy
            </label>
            <asp:Button ID="btn_update" runat="server" CssClass="btn btn-lg btn-login btn-block" Text="Update" 
            onclick="btn_update_Click" ValidationGroup="u_pd" ></asp:Button>
                    <asp:Label ID="lbl_display" runat="server" Text=""></asp:Label>
        </div>
      </form>
    </div>
</body>
</html>