<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserLogOut.aspx.cs" Inherits="UserLogOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Timer ID="Timer1" Interval="500" OnTick="Time_Tick" runat="server"></asp:Timer>
            
    </div>
    </form>
</body>
</html>
