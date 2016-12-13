<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_feedback.aspx.cs" Inherits="Add_feedback" %>
<%@ Register src="UserHeader.ascx" tagname="UserHeader" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<link href="assets/ordergolddesign/css/bootstrap.min.css" rel="stylesheet" />
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
    <link href="assets/font-awesome.css" rel="stylesheet" />--%>
</head>
<body>
    <form id="form1" runat="server">
         <div>
     <uc1:UserHeader ID="UserHeader1" runat="server" />
         </div><h3 align="center"> Feedback </h3>
     <div class="container">
         
             
        <div class="col-lg-10">
        <div class="box form-control-static" >
               <div class="box-header" style="top: 77px; left: 15px;"> <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Feedback</h2>
                   </b>
               <div class="box-body" style="position:absolute; top: 118px; left: 107px; width: 1012px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Subject :" Width="130px"></asp:Label>
                <asp:TextBox ID="TxtSubj" Width="520px" runat="server" CssClass="form-control-static"></asp:TextBox>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Feedback :" Width="130px"></asp:Label>
                <asp:TextBox ID="TxtFeedback" Width="520px" runat="server" CssClass="form-control-static" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BtnFeedBSend" runat="server" CssClass="btn btn-primary" Text="Send" OnClick="BtnFeedBSend_Click"/>
                   <br />
                   <br />
                   <br />
                   <asp:Label ID="lbl_msg" runat="server" Text="" style="position:absolute; top: 268px; left: 414px; width: 563px;"></asp:Label>
               <br />
               <br />
               </div>
        </div>
        </div>
        </div>
    </div>
    </form>
</body>
</html>