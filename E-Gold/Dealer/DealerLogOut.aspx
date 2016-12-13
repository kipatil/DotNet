<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DealerLogOut.aspx.cs" Inherits="Dealer_DealerLogOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:ScriptManager runat="server" ID="ScriptManager1"></asp:ScriptManager>
            <asp:Timer ID="Timer2" Interval="500" OnTick="Timer_Tick" runat="server"></asp:Timer>
    </div>
    </form>
</body>
</html>
