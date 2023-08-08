<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage1.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
Home<asp:Label ID="lblusername" runat="server" Text="Label"></asp:Label>
    <asp:Button ID="Button1" runat="server" Text="logout" onclick="Button1_Click" />
</asp:Content>

