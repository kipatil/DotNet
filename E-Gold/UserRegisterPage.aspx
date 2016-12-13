<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegisterPage.aspx.cs" Inherits="UserRegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet" />
</head>
<body class="login-body">
    <div class="container">
      <form class="form-signin"  runat="server">
        <h2 class="form-signin-heading">registration now</h2>
        <div class="login-wrap">
            <p>Enter your personal details below</p><br />
            <asp:TextBox ID="name" CssClass="form-control" placeholder="Full Name" runat="server" autofocus=""> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="name" ErrorMessage="Name Field Cant be blank" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="dob" CssClass="form-control" placeholder="Date of Birth" runat="server" autofocus=""  > </asp:TextBox><br />
            <asp:TextBox ID="address" CssClass="form-control" placeholder="Address" runat="server" autofocus="" TextMode="MultiLine"> </asp:TextBox><br />
            <span>Gender</span><input checked type="radio" name="gender" value="Male" >Male
             <input type="radio" name="gender" value="Female" />Female<br />
            
          <br />
            <asp:TextBox ID="state" CssClass="form-control" placeholder="State" runat="server" autofocus=""> </asp:TextBox><br />
            <asp:TextBox ID="city" CssClass="form-control" placeholder="City/Town" runat="server" autofocus=""> </asp:TextBox><br />
            <asp:TextBox ID="zip" CssClass="form-control" placeholder="zip" runat="server" autofocus=""> </asp:TextBox><br />
            <asp:TextBox ID="mobileno" CssClass="form-control" placeholder="Mobile No" runat="server" autofocus=""> </asp:TextBox><br />
            <asp:TextBox ID="emailid" CssClass="form-control" placeholder="Email Id" runat="server" autofocus=""> </asp:TextBox><br />
            <asp:TextBox ID="password" CssClass="form-control" placeholder="Password" runat="server" autofocus=""> </asp:TextBox><br />

           
            <p> Enter your Account details below</p>
            <asp:TextBox ID="emailid2" CssClass="form-control" placeholder="Email Id" runat="server" autofocus=""></asp:TextBox> <br />
            <asp:TextBox ID="password2" CssClass="form-control" placeholder="Password" runat="server" autofocus=""></asp:TextBox><br />
            <asp:TextBox ID="Password3" CssClass="form-control" placeholder="Confirm Password" runat="server" autofocus=""></asp:TextBox><br />


            <label class="checkbox">
                <input type="checkbox" value="agree this condition"> I agree to the Terms of Service and Privacy Policy
            </label><br />
            <asp:Button ID="Button1" CssClass="btn btn-lg btn-login btn-block" Text="Submit"
                runat="server" onclick="Button1_Click1" type="submit" /> </button>

            <div class="registration">
                Already Registered.
                <a class="" href="UserLogPage.aspx">
                    Login
                </a>
            </div>
        </div>
      </form>
    </div>
</body>
</html>