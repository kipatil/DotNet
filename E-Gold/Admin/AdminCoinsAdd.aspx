<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminCoinsAdd.aspx.cs" Inherits="Admin_AdminCoinsAdd" %>

<%@ Register src="AdminHeader.ascx" tagname="AdminHeader" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:AdminHeader ID="AdminHeader1" runat="server" />
    </div>
        <section id="content">
        <div class="container">
             <h3 align="center"> E-Gold </h3>
        <div class="col-lg-12">
        <div class="box form-control-static" >
               <div class="box-header">
                   <p>
                       <span><h3 style="position:absolute; top: 70px; left: 106px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome To E-Gold </h3></span>
                   </p>
               <div class="box-body"> 
                   <asp:TextBox ID="TxtCoinQnty" runat="server" CssClass="form-control" placeholder="In Grams" Width="250px" style="position:absolute; top: 168px; left: 539px;"></asp:TextBox>
                   <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 419px; top: 172px; position: absolute" Text="Coin Quantity :"></asp:Label>
                   <br />
                   <br />
                   <br />
                   <asp:Label ID="lbl_display" runat="server" Text="" style="position:absolute; top: 249px; left: 497px;"></asp:Label>
                   <asp:Button ID="BtnCnAdd" runat="server" Text="ADD" CssClass="btn btn-primary" OnClick="BtnCnAdd_Click" style="position:absolute; top: 301px; left: 535px;"/>
                   </div>
                   </div>
            </div>
            </div>
    </div>
            </section>
    </form>
</body>
</html>
