<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage1.master" AutoEventWireup="true" CodeFile="dobooking.aspx.cs" Inherits="dobooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="TableNo" DataSourceID="SqlDataSource1" 
        >
        <Columns>
            <asp:BoundField DataField="Tablename" HeaderText="Tablename" 
                SortExpression="Tablename" />
            <asp:BoundField DataField="NoofSets" HeaderText="NoofSets" 
                SortExpression="NoofSets" />
            <asp:BoundField DataField="Comment" HeaderText="Comment" 
                SortExpression="Comment" />

                <asp:TemplateField HeaderText="Booking">
                    <ItemTemplate><%# BookingManager.GetBookingUrl( Eval("TableNo"))  %></ItemTemplate>
                    </asp:TemplateField>
                     
        </Columns>
    </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RestaurantsConnectionString %>" 
        SelectCommand="SELECT * FROM [TableDetails] order by tablename"></asp:SqlDataSource>
    
</asp:Content>

