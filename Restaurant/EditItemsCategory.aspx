<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage1.master" AutoEventWireup="true" CodeFile="EditItemsCategory.aspx.cs" Inherits="EditItemsCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
    <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Itemname"></asp:Label>
    <asp:TextBox ID="txtItemname" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Packing"></asp:Label>
    <asp:TextBox ID="txtPacking" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
    <br />
</asp:Content>

