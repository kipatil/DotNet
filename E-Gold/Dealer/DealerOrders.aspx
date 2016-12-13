<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DealerOrders.aspx.cs" Inherits="Dealer_DealerOrders" %>

<%@ Register src="DealerHeader.ascx" tagname="DealerHeader" tagprefix="uc1" %>


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
        
        <uc1:DealerHeader ID="DealerHeader1" runat="server" />
        
    </div>
     <div class="container">
             <h3 align="center"> E-Gold </h3>
        <div class="col-lg-10">
        <div class="box form-control-static" >
               <div class="box-header" style="border: medium solid #FFFF00;">
                   <p>
                       <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Supply Orders For Dealer </h3></span>
                   </p>
               <div class="box-body">
                <br />
                   <br />        
                   <asp:DropDownList ID="DrpDwnSelectType" style="position:absolute; top: 146px; left: 420px;" AutoPostBack="true" CssClass="btn dropdown-toggle clearfix btn-default" runat="server" Width="190px" OnSelectedIndexChanged="DrpDwnSelectType_SelectedIndexChanged"> </asp:DropDownList>
            <br />
                   <br />
                   <br />
            <br />
        <div class="rpt_div" style="width:100%">
                <asp:Repeater ID="rptr_dorder" runat="server">
                <HeaderTemplate>
                
                <div style="width:8%">Coins</div>
                <div style="width:16%">Quantity</div>
                <div style="width:23%">Gold Price</div>
                <div style="width:20%">Total amount</div>
                <div style="width:20%">purchase Date</div>
                <div style="width:10%">&nbsp;</div>
                
                <p class="clear"></p>
                </HeaderTemplate>
                <ItemTemplate>
                
                <div style="width:8%"><asp:HiddenField ID="hf_coin_type" runat="server" Value='<%# Eval("coin_type")%>'></asp:HiddenField><%# Eval("coin_type")%></div>
                <div style="width:16%"><asp:HiddenField ID="hf_qty" runat="server" Value='<%# Eval("qty")%>'></asp:HiddenField> <%# Eval("qty")%></div>
                <div style="width:23%"><%# Eval("gold_price")%></div>
                <div style="width:20%"><%# Eval("tot_amt")%></div>
                <div style="width:20%"><%# Eval("pur_date")%></div>
                <div style="width:10%"><asp:LinkButton ID="LinkButton1" CommandArgument='<%# Eval("gp_id")%>' OnClick="shipped_gold" runat="server">Shipped</asp:LinkButton></div>
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