<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginpage.aspx.cs" Inherits="loginpage" %>

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
    <br />
    <asp:Label ID="Label2" runat="server" Text="username"></asp:Label>
    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="password" ></asp:Label>
    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Login" 
    onclick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
