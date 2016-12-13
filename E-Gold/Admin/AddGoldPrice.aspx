<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddGoldPrice.aspx.cs" Inherits="Admin_AddGoldPrice" %>

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
        <br />
        <br />
        <br />
        <div class="container">
             <h3 align="center"> E-Gold </h3>
        <div class="col-lg-12">
        <div class="box form-control-static" >
            

               <div class="box-header" style="border: medium solid #FFFF00;">
                   <p>
                       <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <h3 style="position:absolute; top: 20px; left: 62px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gold Price </h3></span>
                   </p>
               <div class="box-body"> 
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblpgold" Text="Price Per Gold : " runat="server" style="position:absolute; top: 113px; left: 329px;"></asp:Label>  <asp:TextBox ID="TxtPriceGram" runat="server" CssClass="form-control-static" Width="250px" style="position:absolute; top: 123px; left: 464px;"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="lbl_display" runat="server" style="position:absolute; top: 151px; left: 531px;"></asp:Label>
                   <br />
                   <br />
                   <asp:Button ID="btn_save" runat="server" CssClass="btn btn-primary" OnClick="btn_save_Click" Text="ADD" style="width:200px;position:absolute; top: 190px; left: 483px;" />
                   <br />
                   <br />
                   <br />

                   <br />

        <div class="rpt_div" style="width:100%">
                <asp:Repeater ID="rpt_goldprice" runat="server">
                <HeaderTemplate>
                <div style="width:30%">Gold Price</div>
                <div style="width:30%">On Date</div>
                <div style="width:30%">Action</div>
                <p class="clear"></p>
                </HeaderTemplate>
                <ItemTemplate>
                   
                 <div style="width:30%"><%# Eval("gold_price") %></div>
                    <div style="width:30%"><%# Eval("ent_date") %></div>
                    <div style="width:20%"><asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("gp_id") %>' CommandName='<%# Eval("gold_price") %>' OnClick="edit_price">Edit</asp:LinkButton></div> 
                
                    
     
                <p class="clear"></p>
                </ItemTemplate>
                </asp:Repeater>
                </div>
    </form>
</body>
</html>
