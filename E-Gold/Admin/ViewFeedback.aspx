<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewFeedback.aspx.cs" Inherits="Admin_ViewFeedback" %>

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
        <section id="content">
        <div class="container">
             <h3 align="center"> E-Gold </h3>
        <div class="col-lg-12">
        <div class="box form-control-static" >
               <div class="box-header">
                   <p>
                       <span><h3 style="position:absolute; top: 11px; left: 109px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Account Status </h3></span>
                   </p>
               <div class="box-body">
                   <br />
                   <br />
        <%--<div class="rpt_div" style="width:100%">--%>
                <table id="tbl" class="table table-hover">
                <tr>
                <asp:Repeater ID="rptr_ac_view" runat="server">     
                <HeaderTemplate> 
                <tr>  
                <th style="width:6%">Sl #</div></th>
                <th style="width:20%">Subject</div></th>
                <th style="width:38%">Feedback</div></th>
                <th style="width:20%">By User</div></th>
                <th style="width:15%">Date</div></th>
                <p class="clear"></p>
                </tr>
                </HeaderTemplate>      
                <ItemTemplate>
                <tr>
                <td style="width:6%"><%# Container.ItemIndex + 1%></div></td>
                <td style="width:20%"> <%# Eval("title")%></div></td>
                <td style="width:38%">  <%# Eval("feed")%></div></td>
                <td style="width:20%"> <%# Eval("fname")%></div></td>
                <td style="width:15%"> <%# Eval("date")%></div></td>
                <p class="clear"></p></tr>
                </ItemTemplate>  
                </asp:Repeater>
                </tr>
                </table>
               </div>
            </div>
            </div>
            </div>
            </div>
           <%-- </div>--%>
            </section>
    </form>
</body>
</html>
