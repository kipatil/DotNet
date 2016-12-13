<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminOrders.aspx.cs" Inherits="Admin_AdminOrders" %>

<%@ Register src="AdminHeader.ascx" tagname="AdminHeader" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
.rpt_div div{float:left}
</style>
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
                       <span><h3 style="position:absolute; top: 70px; left: 106px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Current Purchase Orders </h3></span>
                   </p>
               <div class="box-body"> 
                   <asp:DropDownList ID="DrpdwnType" AutoPostBack="true" runat="server" CssClass="btn btn-default dropdown-toggle" Width="250px" style="position:absolute; top: 177px; left: 277px;" OnSelectedIndexChanged="DrpdwnType_SelectedIndexChanged"></asp:DropDownList>
                   <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 138px; top: 179px; position: absolute" Text="Select Order Type :"></asp:Label>
                   <br />
                   <br />
                   <br />
                   <br />
                   <br />
                   <br />
                   <br />
                   <br />
                   <div class="rpt_div" style="width:100%">
                       
                <asp:Repeater ID="rptr_sale_order" runat="server">
                <HeaderTemplate>
                
                    <div style="width:8%">Coin Type</div>
                    <div style="width:16%">Quantity</div>
                    <div style="width:20%">Gold Price</div>
                    <div style="width:20%">Total amount</div>
                    <div style="width:20%">Sale Date</div>
                    <div style="width:13%">Status</div>
                
                <p class="clear"></p>
                </HeaderTemplate>
                <ItemTemplate>
                
                <div style="width:8%"><%# Eval("coin_type")%></div>
                    <div style="width:16%"><%# Eval("qty")%></div>
                    <div style="width:20%"><%# Eval("gold_price")%></div>
                    <div style="width:20%"><%# Eval("tot_amt")%></div>
                    <div style="width:20%"><%# Eval("sale_date")%></div>
                    <div style="width:13%"><%# Eval("status")%></div>
                <p class="clear"></p>
                </ItemTemplate>
                
                </asp:Repeater>
                   </div>
                   <br />
                   <br />
                   <br />
               <ul class="custom-form">
				<li style="overflow:hidden"><span></span>
               <asp:Button ID="btn_pur" runat="server" Text="Go to purchase" style="position:absolute; top: 173px; left: 760px;" CssClass="btn btn-primary"
            onclick="btn_pur_Click" Width="250px"/></li></ul>

                        </div>
                     </div>
                  </div>
               </div>
           </div>
            </section>
    </form>
</body>
</html>