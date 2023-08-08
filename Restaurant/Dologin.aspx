<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage1.master" AutoEventWireup="true" CodeFile="Dologin.aspx.cs" Inherits="Dologin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
</asp:Content>

