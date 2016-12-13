<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BankDetails.aspx.cs" Inherits="Admin_BankDetails" %>

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
                       <span><h3 style="position:absolute; top: 70px; left: 106px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Account Status </h3></span>
                   </p>
               <div class="box-body">
                   <asp:Button ID="BtnActView" runat="server" CssClass="btn btn-primary" Text="VIEW" Width="250px" style="position:absolute; top: 155px; left: 416px;" OnClick="BtnActView_Click" />
                   <br />
                   <br />
                   <br />
                   <br /><br />
                   <br />
                   <br /><br />
                   <div class="col-lg-12">
                   <div class="rpt_div" style="width:80%;position:absolute; top: 3px; left: 151px;">
                <asp:Repeater ID="rptr_ac_view" runat="server">
                <HeaderTemplate>
                
                <div style="width:08%">Sl #</div>
                <div style="width:13%">Cr</div>
                <div style="width:13%">Dr</div>
                <div style="width:20%">Order By</div>
                <div style="width:20%">Dealer</div>
                <div style="width:13%">Date</div>
                <div style="width:10%">Balance</div>
                <p class="clear"></p>
                </HeaderTemplate>
                <ItemTemplate>
                
                <div style="width:08%"><%# Container.ItemIndex + 1%></div>
                <div style="width:13%"><%# Eval("credit")%></div>
                <div style="width:13%"><%# Eval("debit")%></div>
                <div style="width:20%"><%# Eval("from_agent")%></div>
                <div style="width:20%"><%# Eval("to_dealer")%></div>
                <div style="width:13%"><%# Eval("date")%></div>
                <div style="width:10%"><%# Eval("balance")%></div>
                <p class="clear"></p>
                </ItemTemplate>
                
                </asp:Repeater>
               </div>
                   </div>
                   </div>
            </div>
            </div>
            </div>
            </section>
        <script type="text/javascript"> Cufon.now(); </script>
    </form>
</body>
</html>
