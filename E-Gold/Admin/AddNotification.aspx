<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNotification.aspx.cs" Inherits="Admin_AddNotification" %>

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
                       <span><h3 style="position:absolute; top: 70px; left: 106px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add Notification </h3></span>
                   </p>
               <div class="box-body"> 
                   <asp:TextBox ID="TxtTitle" runat="server" CssClass="form-control" Width="250px" style="position:absolute; top: 175px; left: 510px;"></asp:TextBox>
                   <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 420px; top: 180px; position: absolute" Text="Title :"></asp:Label>
                   <br />
                   <br />
                   <asp:TextBox ID="TxtNotice" runat="server" CssClass="form-control" Width="250px" style="position:absolute; top: 250px; left: 509px;" Height="100px" TextMode="MultiLine"></asp:TextBox>
                   <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 418px; top: 258px; position: absolute" Text="Notification :"></asp:Label>
                   <br />
                   <br />
                   <asp:Label ID="lbl_display" runat="server" Text="" style="position:absolute; top: 369px; left: 530px;"></asp:Label>
                   <asp:Button ID="BtnAddNotice" runat="server" Text="Add Notice" CssClass="btn btn-primary" OnClick="BtnCnAdd_Click" style="position:absolute; top: 432px; left: 540px;"/>
                   </div>
                   </div>
            </div>
            </div>
    </div>
            </section>
    </form>
</body>
</html>