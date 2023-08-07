<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Deleted.aspx.cs" Inherits="Deleted" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Account No"></asp:Label>
        <asp:TextBox ID="txtAccountNo" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Get" onclick="Button1_Click" />
        <br />
        <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lblBalance" runat="server" Text=""></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Delete" onclick="Button2_Click" />
    
    </div>
    </form>
</body>
</html>
