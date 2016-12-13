<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GoldPrice.aspx.cs" Inherits="GoldPrice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/bootstrap-reset.css" rel="stylesheet" />--%>
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
   <%-- <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/style-responsive.css" rel="stylesheet" />--%>
    <link href="assets/css/datepicker.css" rel="stylesheet" />
    <script src="assets/js/bootstrap-datepicker.js"></script>
    <link href="assets/css/icomoon/bootstrap-reset.css" rel="stylesheet" />
    <link href="assets/css/icomoon/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/icomoon/style-responsive.css" rel="stylesheet" />
    <link href="assets/css/icomoon/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <section id="content" style="text-align:center;">
           <div class="container" style="background-color: #FFFFFF">
               
               <h2 style="color: #000000"> Gold Prices </h2>
               <br />
               <br />
               <span></span><asp:TextBox ID="txt_st_date"  runat="server" placeholder="MM/DD/YYYY" CssClass="form-control" Width="250px" style="position:absolute; top: 85px; left: 501px;"></asp:TextBox><br /><br />
               <span></span><asp:TextBox ID="txt_end_date"  runat="server" placeholder="MM/DD/YYYY"  CssClass="form-control" Width="250px" style="position:absolute; top: 143px; left: 501px;"></asp:TextBox> <br />  
			   <span></span>
               <br />
               <br />
               <asp:Button ID="btn_view" runat="server" CssClass="btn btn-primary" Text="View" onclick="btn_view_Click" style="position:absolute; top: 218px; left: 601px;" />
			   <br />
               <br />
               <br />
               <br />
               <br />
                <table id="tbl" class="table table-hover">
                <tr>
                <asp:Repeater ID="rptr_gold_price" runat="server">
                <HeaderTemplate>
                    <tr>
                    <th style="width:45%;text-align:center;"> Gold Price </th>
                    <th style="width:45%;text-align:center;"> On Date </th>
                    <p class="clear"></p>
                    </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                    <td style="width:45%;"><%# Eval("gold_price")%></td>
                    <td style="width:45%;"><%# Eval("ent_date") %></td>
                    <p class="clear"></p>
                    </tr>
                </ItemTemplate>
                </asp:Repeater>
                </tr>
                </table>
                </div>
            </section>
    </form>
</body>
</html>