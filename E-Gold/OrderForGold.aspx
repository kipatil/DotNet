<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderForGold.aspx.cs" Inherits="OrderForGold" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    </style>
    <link href="assets/ordergolddesign/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/ordergolddesign/css/flat-ui.css" rel="stylesheet" />
    <link href="assets/ordergolddesign/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/metro-bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="assets/metro-bootstrap.min.css" rel="stylesheet" />
    <script src="assets/metro.min.js"></script>
    <link href="assets/iconFont.min.css" rel="stylesheet" />
    <link href="assets/ionicons.css" rel="stylesheet" />
    <link href="assets/ionicons.min.css" rel="stylesheet" />
    <link href="assets/custom.css" rel="stylesheet" />
    <link href="assets/admin-section.css" rel="stylesheet" />
    <link href="assets/font-awesome.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
             <h3 align="center"> Order For Gold </h3>
        <div class="col-lg-12">
        <div class="box form-box" style="position:absolute; top: -93px; left: 383px;">
           <div class="box-header">
               <div class="box-body">
                   <asp:Label ID="Label1" runat="server" Text="Select Type :" Width="130px" ForeColor="Black"></asp:Label>
                   <asp:DropDownList ID="DrpDwnSelectType" CssClass="btn dropdown-toggle clearfix btn-default" runat="server" Width="190px"> </asp:DropDownList>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="Select Atleast One" ControlToValidate="DrpDwnSelectType" InitialValue="--Select--"></asp:RequiredFieldValidator>
                   <br />
                   <br />
                   <asp:Label ID="Label2" runat="server" Width="130px" Text="Select Coin :" ForeColor="Black"></asp:Label>
                   <asp:DropDownList ID="DrpDwnSelectCoin" runat="server" CssClass="btn dropdown-toggle clearfix btn-default" Width="190px"></asp:DropDownList>
                   
                   <br />
                   <br />
                   <asp:Label ID="Label3" runat="server" Text="Quantity :" Width="130px" ForeColor="Black" ></asp:Label>
                   <asp:TextBox ID="TxtQty" Width="190px" runat="server" CssClass="form-control-static" AutoPostBack="true"  placeholder="Quantity" Ontextchanged="TxtQty_TextChanged"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="Label4" Width="130px" runat="server" Text="Card Type :" ForeColor="Black"></asp:Label>
                   <asp:DropDownList ID="DrpDwnCardType" Width="190px" runat="server" CssClass="btn dropdown-toggle clearfix btn-default" >
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Visa</asp:ListItem>
                <asp:ListItem>Master card</asp:ListItem>
                   </asp:DropDownList>
                   <br />
                   <br />
                   <asp:Label ID="Label5" Width="130px" runat="server" Text="Card Number :" ForeColor="Black"></asp:Label>
                   <asp:TextBox ID="TxtCardNum" CssClass="form-control-static" Width="190px" runat="server" placeholder="Card Number"></asp:TextBox>       
                   <br />
                   <br />
                   <asp:Label ID="Label6" Width="130px" runat="server" Text="CVV Code :" ForeColor="Black"></asp:Label>
                   <asp:TextBox ID="TxtCvvCode" CssClass="form-control-static" Width="190px" runat="server"  placeholder="CVV Code"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="Label7" Width="130px" runat="server" Text="Expire Month :" ForeColor="Black" ></asp:Label>
                   <asp:DropDownList ID="DrpDwnExpMnth" Width="190px" runat="server" CssClass="btn dropdown-toggle clearfix btn-default">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                   </asp:DropDownList>
                   <br />
                   <br />
                   <asp:Label ID="Label8" Width="130px" runat="server" Text="Expire Year :" ForeColor="Black" ></asp:Label>
                   <asp:DropDownList ID="DrpDwnExpYear" Width="190px" runat="server" CssClass="btn dropdown-toggle clearfix btn-default" >
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2016</asp:ListItem>
                <asp:ListItem>2017</asp:ListItem>
                <asp:ListItem>2018</asp:ListItem>
                <asp:ListItem>2019</asp:ListItem>
                <asp:ListItem>2020</asp:ListItem>
                <asp:ListItem>2021</asp:ListItem>
                <asp:ListItem>2022</asp:ListItem>
                <asp:ListItem>2023</asp:ListItem>
                <asp:ListItem>2024</asp:ListItem>
                <asp:ListItem>2025</asp:ListItem>
                   </asp:DropDownList>
                   <br />
                   <br />
                   <asp:Button ID="BtnSave" runat="server" Text="Save" CssClass="btn btn-block btn-lg btn-inverse" OnClick="BtnSave_Click" />
                   <br />
                   <br />
                   <asp:Label ID="Label9" runat="server" Text="Gold Price Is :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="LblGldPice" runat="server" ></asp:Label>&nbsp;&nbsp;
                    <asp:Label ID="Label11" runat="server" Text="Per Gram"></asp:Label>           
                   <br />
                   <br />
                   <asp:Label ID="Label10" runat="server" Text="Total Amount Is :"></asp:Label>&nbsp;&nbsp;
                   <asp:Label ID="LblTotalAmt" runat="server"></asp:Label>
                   <br />
                   <br />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LblResult" runat="server"></asp:Label>
                    </div>                      
                 </div>
            </div>
        </div>
     </div>
     </form>
</body>
</html>