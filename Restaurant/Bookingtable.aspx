<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage1.master" AutoEventWireup="true" CodeFile="Bookingtable.aspx.cs" Inherits="Bookingtable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
<div class="col-md-12">
    <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="BookingNo" DataSourceID="SqlDataSource1" 
        GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
            
        <Columns>
            <asp:BoundField DataField="BookingNo" HeaderText="BookingNo" 
                InsertVisible="False" ReadOnly="True" SortExpression="BookingNo" />
            <asp:BoundField DataField="TableNo" HeaderText="TableNo" 
                SortExpression="TableNo" />
            <asp:BoundField DataField="BookingTime" HeaderText="BookingTime" 
                SortExpression="BookingTime" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />

    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label1" runat="server" Text="TableNo"></asp:Label>
    <asp:Button ID="Button1" runat="server" Text="Book" onclick="Button1_Click1" />
    <asp:Button ID="Button2" runat="server" Text="unBook" />
    




</div>

</div>
</asp:Content>

