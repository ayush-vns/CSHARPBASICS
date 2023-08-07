<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createaccount.aspx.cs" Inherits="createaccount" %>

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
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Balance"></asp:Label>
        <asp:TextBox ID="txtBalance" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="create" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="clear" onclick="Button2_Click" />
    </div>
    </form>
</body>
</html>
