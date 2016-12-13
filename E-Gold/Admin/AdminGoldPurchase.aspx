<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminGoldPurchase.aspx.cs" Inherits="Admin_AdminGoldPurchase" %>

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
                       <span><h3 style="position:absolute; top: 70px; left: 106px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gold Purchase </h3></span>
                   </p>
               <div class="box-body"> 
                   <asp:Label ID="lblpgold" Text="Select Order Type : " runat="server" style="position:absolute; top: 170px; left: 329px;"></asp:Label>  
                   <asp:DropDownList ID="DrpDwnOrdTyp" runat="server" CssClass="form-control-static" Width="250px" style="position:absolute; top: 169px; left: 468px;"></asp:DropDownList>
                   <br />
                   <br />
                   <asp:Label ID="Label1" Text="Select Coin Type : " runat="server" style="position:absolute; top: 234px; left: 327px;"></asp:Label>  
                   <asp:DropDownList ID="DrpDwnConTyp" runat="server" CssClass="form-control-static" Width="250px" style="position:absolute; top: 232px; left: 467px;"></asp:DropDownList>
                   <br />
                   <br />
                   <asp:Label ID="Label2" Text="Quantity : " runat="server" style="position:absolute; top: 299px; left: 328px;"></asp:Label>  
                   <asp:TextBox ID="TxtQuantity" runat="server" CssClass="form-control-static" Width="250px" style="position:absolute; top: 298px; left: 468px;" OnTextChanged="TxtQuantity_TextChanged"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="Label4" Text="Dealer Name : " runat="server" style="position:absolute; top: 364px; left: 332px;"></asp:Label>  
                   <asp:DropDownList ID="DrpDwnDealer" runat="server" CssClass="form-control-static" Width="250px" style="position:absolute; top: 363px; left: 468px;"></asp:DropDownList>
                   <br />
                   <br />
                   <asp:Label ID="lbl_display" runat="server" style="position:absolute; top: 417px; left: 553px;"></asp:Label>
                   <br />
                   <br />
                   <asp:Button ID="Btn_Order" runat="server" CssClass="btn btn-primary" OnClick="btn_save_Click" Text="ORDER" style="width:200px;position:absolute; top: 450px; left: 489px;" />
                   <br />
                   <br />
                   <asp:Label ID="Label5" runat="server" style="position:absolute; top: 504px; left: 320px;" Text="Gold Price is :"></asp:Label>
                   <asp:Label ID="LblGoldPrc" runat="server" style="position:absolute; top: 506px; left: 478px;"></asp:Label>
                   <asp:Label ID="Label6" runat="server" style="position:absolute; top: 506px; left: 632px;" Text="Per Gram"></asp:Label>
                   <br />
                   <br />
                   <asp:Label ID="Label3" runat="server" style="position:absolute; top: 567px; left: 319px;" Text="Total Amount is "></asp:Label>
                   <asp:Label ID="LblTotalPrc" runat="server" style="position:absolute; top: 565px; left: 479px;"></asp:Label>
                   
                   </div>
                   </div>
            </div>
            </div>
            </div>
    </form>
</body>
</html>
