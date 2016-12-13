<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminOrderDetails.aspx.cs" Inherits="Admin_AdminOrderDetails" %>

<%@ Register src="AdminHeader.ascx" tagname="AdminHeader" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../assets/js/zebra_datepicker.css" rel="stylesheet" />
    <script src="../assets/js/zebra_datepicker.js"></script>
    <img src="../assets/js/calendar-disabled.png" />
    <img src="../assets/js/calendar.png" />
    <script type="text/javascript">
        $(function () {
            $(".pending").html("Pending");
        });
</script>
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
                       <span><h3 style="position:absolute; top: 70px; left: 106px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Order Details </h3></span>
                   </p>
               <div class="box-body">
                   <br />
                   <br />
                   <br />
        <div class="rpt_div" style="width:100%">
                <asp:Repeater ID="rptr_dorder" runat="server">
                <HeaderTemplate>
                <div style="width:8%">Coins</div>
                <div style="width:10%">Type</div>
                <div style="width:6%">Qty</div>
                <div style="width:15%">Gold Price</div>
                <div style="width:18%">Total amount</div>
                <div style="width:18%">purchase Date</div>
                <div style="width:12%">User Name</div>
                <div style="width:10%">Assign Agent</div>
                <p class="clear"></p>
                </HeaderTemplate>
                
                <ItemTemplate>
                <div style="width:8%"><%# Eval("coin_type")%><asp:HiddenField ID="hf_cointype" Value='<%# Eval("coin_type")%>' runat="server"></asp:HiddenField></div>
                <div style="width:10%"><%# Eval("sale_type")%><asp:HiddenField ID="hf_qty" Value='<%# Eval("qty")%>' runat="server"></asp:HiddenField></div>
                <div style="width:6%"><%# Eval("qty")%></div>
                <div style="width:15%"><%# Eval("gold_price")%></div>
                <div style="width:18%"><%# Eval("tot_amt")%></div>
                <div style="width:18%"><%# Eval("sale_date")%></div>
                <div style="width:12%"><%# Eval("fname")%></div>
                <div style="width:10%"><asp:LinkButton ID="LinkButton1" OnClick="assign_agent" runat="server" CommandArgument='<%# Eval("gs_id") %>'>Assign</asp:LinkButton></div>
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

<script>
    $(document).ready(function () {

        // if user clicked on button, the overlay layer or the dialogbox, close the dialog  
        $('.button').click(function () {
            $('#dialog-overlay, #dialog-box').hide();
            return false;
        });

    });
    function dialog() {

        // get the screen height and width  
        var maskHeight = $(document).height();
        var maskWidth = $(window).width();

        // calculate the values for center alignment
        var dialogTop = (maskHeight / 3) - ($('#dialog-box').height());
        var dialogLeft = (maskWidth / 2) - ($('#dialog-box').width() / 2);

        // assign values to the overlay and dialog box
        $('#dialog-overlay').css({ height: maskHeight, width: maskWidth }).show();
        $('#dialog-box').css({ top: dialogTop, left: dialogLeft }).show();
    }


    </script>
    
    <div id="dialog-overlay"></div>
    <div id="dialog-box">
    <div class="dialog-content">
    <p style="position:absolute; top: 479px; left: 606px;"><b>Assign Agent</b></p>
        <div id="dialog-message" align="center">
      <p style="position:absolute; top: 543px; left: 543px;">  Select Agent :</p> <asp:DropDownList ID="ddl_worker" runat="server" CssClass="btn btn-default dropdown-toggle" style="position:absolute; top: 546px; left: 656px; bottom: 182px;" Height="30px" Width="200px">
                                                    </asp:DropDownList>
            <br />
            <br />
         <p style="position:absolute; top: 606px; left: 546px;">Select Date:</p><asp:TextBox ID="txt_date" style="position:absolute; top: 598px; left: 658px;" runat="server" CssClass="form-control" Width="250px" ></asp:TextBox><br />
            <asp:Button ID="btn_edit" OnClick="assign_click" runat="server" Text="Assign" style="position:absolute; top: 668px; left: 628px;" CssClass="btn btn-primary"/>
        </div>
        <br />
        <br />
        <%--<a href="#" class="button">Close</a>--%>
    </div>
    </div>
    </form>
</body>
</html>