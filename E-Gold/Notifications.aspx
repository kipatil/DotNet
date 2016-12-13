<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Notifications.aspx.cs" Inherits="Notifications" %>


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
    <div class="indent">
               <ul class="box-list">
                   <div class="container">
                   <h2 align="center">Notifications </h2>
                   <div class="col-lg-12">
                   <div class="box form-control-static" >
                   <div class="box-header"> 
                  <%--<div class="table table-bordered table-striped table-condensed" style="width:100%" >--%>
                   <br />
                <table id="tbl" class="table table-hover">
                <tr>
                  <asp:Repeater ID="Repeater1" runat="server" >
                  <ItemTemplate>
                 <tr>
                        <h2><%# Eval("title") %><small>(On <%# Eval("date") %>)</small></h2>
                        <p class="p0"><%# Eval("notification") %></p>
                        <br /><br />
                        <% if (Session["a_id"] != null)
                        { %> <p><br />
                         <%--<asp:Button CommandArgument='<%# Eval("notification_id") %>' ID="btn_delete" runat="server" Text="Delete"></asp:Button>--%>
                        </p><%} %>
                        </tr>
                  </ItemTemplate>
                  </asp:Repeater>
                    </tr>
                    </table>
                       </div>
                   </div>
                 </div>                    
                   </div></ul>
                        </div>          
            </div>
    </form>
</body>
</html>
