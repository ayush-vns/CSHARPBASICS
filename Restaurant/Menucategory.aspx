<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage1.master" AutoEventWireup="true" CodeFile="Menucategory.aspx.cs" Inherits="Menucategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<style>
    
    div
    {
        font-size: 20px;
        font-style:oblique;
              
     }
     h1
     {
         background-color:aqua;
         
     }
</style>


<center>
<h1>
    <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
    </h1>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
    <asp:TextBox ID="txtName" runat="server" Height="24px" Width="168px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Comment"></asp:Label>
    <asp:TextBox ID="txtComment" runat="server" Height="21px" Width="174px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" BackColor="#B5C7DE" Font-Bold="true" runat="server" Text="Submit" onclick="Button1_Click" 
        Height="31px" Width="94px" />
    <br />
    </center>
   <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="CategoryNo" DataSourceID="SqlDataSource1" BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Horizontal" Height="16px" 
        style="margin-left: 0px; margin-top: 81px" Width="900px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CategoryNo" HeaderText="CategoryNo" 
                InsertVisible="False" ReadOnly="True" SortExpression="CategoryNo" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Comment" HeaderText="Comment" 
                SortExpression="Comment" />
                <asp:TemplateField HeaderText="View Items">
                    <ItemTemplate><a target="cr" class="btn btn-primary" href='Itemsincategory.aspx?CategoryNo=<%# Eval("CategoryNo") %>'> Items list</a></ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="CategoryName">
                    <ItemTemplate>
                     <asp:TemplateField HeaderText="Edit Item" >  
                     <a target="cr"  class = "btn bg-danger" href="EditItemsCategory.aspx?categoryno=<%#Eval("CategoryNo") %>">Edit List</a>
                     </ItemTemplate>
                     </asp:TemplateField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RestaurantsConnectionString %>"
        DeleteCommand = "delete from Restaurants where Categoryno=@Categoryno"
        UpdateCommand= "update Restaurants set Name=@Name,Comment=@Comment where Categoryno=@Categoryno" 
        SelectCommand="SELECT * FROM [Restaurants]"></asp:SqlDataSource>
        </center>
</asp:Content>

