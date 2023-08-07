<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage1.master" AutoEventWireup="true" CodeFile="Bookingtable.aspx.cs" Inherits="Bookingtable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
<div class="col-md-12">
    <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="TableNo" DataSourceID="SqlDataSource1" Width="409px">
        <Columns>
            <asp:BoundField DataField="TableNo" HeaderText="TableNo" 
                InsertVisible="False" ReadOnly="True" SortExpression="TableNo" />
            <asp:BoundField DataField="Tablename" HeaderText="Tablename" 
                SortExpression="Tablename" />
            <asp:BoundField DataField="NoofSets" HeaderText="NoofSets" 
                SortExpression="NoofSets" />
            <asp:BoundField DataField="Comment" HeaderText="Comment" 
                SortExpression="Comment" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
        </Columns>
    </asp:GridView>
    




    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RestaurantsConnectionString %>" 
        SelectCommand="SELECT * FROM [Tabledetails] WHERE ([TableNo] = @TableNo)">
        <SelectParameters>
            <asp:QueryStringParameter Name="TableNo" QueryStringField="TableNo" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="tablebooking"></asp:Label>
    <asp:Button ID="Button3" runat="server" Text="book" onclick="Button3_Click" />
    




</div>

</div>
</asp:Content>

