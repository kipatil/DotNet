<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgentLogOut.aspx.cs" Inherits="Agent_AgentLogOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Timer ID="Timer1" Interval="500" runat="server" OnTick="Timer_Tick"></asp:Timer>
    </div>
    </form>
</body>
</html>
