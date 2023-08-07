<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage1.master" AutoEventWireup="true" CodeFile="Itemsincategory.aspx.cs" Inherits="Itemsincategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="CategoryNo" HeaderText="CategoryNo" 
                SortExpression="CategoryNo" />
            <asp:BoundField DataField="Itemname" HeaderText="Itemname" 
                SortExpression="Itemname" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Packing" HeaderText="Packing" 
                SortExpression="Packing" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RestaurantsConnectionString %>" 
        SelectCommand="SELECT [CategoryNo], [Itemname], [Price], [Packing] FROM [MenuItem] WHERE ([CategoryNo] = @CategoryNo) ORDER BY [Itemname], [Packing], [Price]">
        <SelectParameters>
            <asp:QueryStringParameter Name="CategoryNo" QueryStringField="CategoryNo" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

