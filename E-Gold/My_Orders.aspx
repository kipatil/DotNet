<%@ Page Language="C#" AutoEventWireup="true" CodeFile="My_Orders.aspx.cs" Inherits="My_Orders" %>
<%@ Register src="UserHeader.ascx" tagname="UserHeader" tagprefix="uc1" %>

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
     <uc1:UserHeader ID="UserHeader1" runat="server" />
         </div>
    <div class="container">
             <h3 align="center"> E-Gold </h3>
        <div class="col-lg-12">
        <div class="box form-control-static" >
               <div class="box-header">
                   <p>
                       <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Current Purchase Orders </h3></span>
                   </p>
               <div class="box-body">
                <br />
                <br />        
                   <asp:DropDownList ID="DrpDwnSelectType" style="position:absolute; top: 146px; left: 420px;" AutoPostBack="true" CssClass="btn dropdown-toggle clearfix btn-default" runat="server" Width="190px" OnSelectedIndexChanged="DrpDwnSelectType_SelectedIndexChanged"> </asp:DropDownList>
               <br />
                   <br />
                   <br />

                   <div class="rpt_div" style="width:100%">
                <asp:Repeater ID="rptr_sale_order" runat="server">
                <HeaderTemplate>
                
                <div style="width:10%">Coin_Type</div>
                <div style="width:16%">Quantity</div>
                <div style="width:23%">Gold Price</div>
                <div style="width:25%">Total amount</div>
                <div style="width:25%">Sale Date</div>
                
                <p class="clear"></p>
                </HeaderTemplate>
                <ItemTemplate>
                
                <div style="width:10%"><%# Eval("coin_type")%></div>
                <div style="width:16%;left:50px;"><%# Eval("qty")%></div>
                <div style="width:23%"><%# Eval("gold_price")%></div>
                <div style="width:25%"><%# Eval("tot_amt")%></div>
                <div style="width:25%"><%# Eval("sale_date")%></div>
                <p class="clear"></p>
                </ItemTemplate>
                
                </asp:Repeater>
               </div>
        </div>
        </div>
        </div>
        </div>
        </div>
    </form>
</body>
</html>