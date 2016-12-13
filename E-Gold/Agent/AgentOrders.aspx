<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgentOrders.aspx.cs" Inherits="Agent_AgentOrders" %>

<%@ Register src="AgentHeader.ascx" tagname="AgentHeader" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/bootstrap-reset.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/style-responsive.css" rel="stylesheet" />
    <link href="assets/css/icomoon.css" rel="stylesheet" />
    <link href="assets/css/animate-custom.css" rel="stylesheet" />
    <style>
        .rpt_div div{float:left}
        .tooltip{position:relative;cursor:pointer}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>     
        <uc1:AgentHeader ID="AgentHeader1" runat="server" />   
    </div>
       <div class="container">
             <h3 align="center"> E-Gold </h3>
        <div class="col-lg-10">
        <div class="box form-control-static" >
               <div class="box-header" style="border: medium solid #FFFF00;"> 
                       <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Order Details </span>
               
                <div class="rpt_div" style="width:100%">
                <asp:Repeater ID="rptr_dorder" runat="server">
                <HeaderTemplate>
                
                <%--<div style="width:30%;">To</div>--%>
                <div style="width:30%">Type</div>
                <div style="width:10%">Coins Of</div>
                <div style="width:14%">Qty</div>
                <div style="width:20%">Date</div>
                <div style="width:14%">Status</div>
                <p class="clear"></p>
                </HeaderTemplate>
                
                <ItemTemplate>
                <div style="width:30%" class="tooltip"><%# Eval("fname")%>
                <div class="udtls">
                <%# Eval("address")%><br />
                <%# Eval("city")%><br /><%# Eval("state")%>
                <br /><%# Eval("zip")%>
                </div>
                </div>
                <div style="width:30%"><%# Eval("sale_type")%></div>
                <div style="width:10%"><%# Eval("coin_type")%></div>
                <div style="width:14%"><%# Eval("qty")%></div>
                <div style="width:20%"><%# Eval("date")%></div>
                <div style="width:14%"><asp:LinkButton ID="LinkButton1" OnClick="delever_update" runat="server" CommandArgument='<%# Eval("gs_id") %>'>Delevered</asp:LinkButton></div>
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