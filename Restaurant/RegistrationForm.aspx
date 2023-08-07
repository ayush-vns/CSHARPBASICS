<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage1.master" AutoEventWireup="true" CodeFile="RegistrationForm.aspx.cs" Inherits="RegistrationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container">
<div class="row">
<div class="col-md-12"> 

    <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
    <br />
    <br />
    <asp:DropDownList ID="ddl" runat="server" DataSourceID="SqlDataSource1" 
        DataTextField="usertype" DataValueField="usertypeNo">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RestaurantsConnectionString %>" 
        SelectCommand="SELECT * FROM [usertypes] ORDER BY [usertype]">
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="UserTypeNo"></asp:Label>
    <asp:TextBox ID="txtUserTypeNo" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
    <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
    </div>
    </div>
    </div>

</asp:Content>

