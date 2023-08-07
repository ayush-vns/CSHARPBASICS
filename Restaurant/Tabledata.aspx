<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage1.master" AutoEventWireup="true" CodeFile="Tabledata.aspx.cs" Inherits="Tabledata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row" >
<div class="col-md-12">
    <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Table Name"></asp:Label>
    <asp:TextBox ID="txtTablename" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="No of Sets"></asp:Label>
    <asp:TextBox ID="txtNoofsets" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Comment"></asp:Label>
    <asp:TextBox ID="txtComment" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="clear" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="TableNo" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="TableNo" HeaderText="TableNo" InsertVisible="False" 
                ReadOnly="True" SortExpression="TableNo" />
            <asp:BoundField DataField="Tablename" HeaderText="Tablename" 
                SortExpression="Tablename" />
            <asp:BoundField DataField="NoofSets" HeaderText="NoofSets" 
                SortExpression="NoofSets" />
            <asp:BoundField DataField="Comment" HeaderText="Comment" 
                SortExpression="Comment" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
                <asp:TemplateField HeaderText="Booking">
                    <ItemTemplate><a target="cr" class="btn btn-primary" href='Bookingtable.aspx?TableNo=<%# Eval("TableNo") %>'> Booking</a></ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="UnBooking">
                    <ItemTemplate><a target="cr" class="btn btn-primary" href='UNBookingtable.aspx?TableNo=<%# Eval("TableNo") %>'> UnBooking</a></ItemTemplate>
                    </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RestaurantsConnectionString %>" 
        SelectCommand="SELECT * FROM [TableDetails]"></asp:SqlDataSource>

</div>
</div>
</asp:Content>

