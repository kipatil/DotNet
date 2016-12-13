<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminChngPwd.aspx.cs" Inherits="Admin_AdminChngPwd" %>

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
        
        <div class="container">
             <h3 align="center"> E-Gold </h3>
        <div class="col-lg-12">
        <div class="box form-control-static" >
               <div class="box-header">
                   <p>
                       <span><h3 style="position:absolute; top: 70px; left: 106px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Admin Password Changing </h3></span>
                   </p>
               <div class="box-body"> 
                   <asp:Label ID="lblpgold" Text="Admin Email-Id : " runat="server" style="position:absolute; top: 170px; left: 329px;"></asp:Label>  
                   <asp:TextBox ID="TxtAemailid" runat="server" CssClass="form-control-static" Width="250px" style="position:absolute; top: 169px; left: 468px;"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="Label1" Text="Old Password : " runat="server" style="position:absolute; top: 234px; left: 327px;"></asp:Label>  
                   <asp:TextBox ID="TxtOldPwd" runat="server" CssClass="form-control-static" Width="250px" style="position:absolute; top: 232px; left: 467px;"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="Label2" Text="New Password : " runat="server" style="position:absolute; top: 299px; left: 324px;"></asp:Label>  
                   <asp:TextBox ID="TxtNewPwd" runat="server" CssClass="form-control-static" Width="250px" style="position:absolute; top: 298px; left: 468px;"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="Label3" Text="Confirm Password : " runat="server" style="position:absolute; top: 363px; left: 321px;"></asp:Label>  
                   <asp:TextBox ID="TxtCnfrPwd" runat="server" CssClass="form-control-static" Width="250px" style="position:absolute; top: 363px; left: 468px;"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="lbl_display" runat="server" style="position:absolute; top: 409px; left: 545px;"></asp:Label>
                   <br />
                   <br />
                   <asp:Button ID="btn_save" runat="server" CssClass="btn btn-primary" OnClick="btn_save_Click" Text="UPDATE" style="width:200px;position:absolute; top: 450px; left: 489px;" />
                   <br />
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
