using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditItemsCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
            return;
        lblName.Text = Utilities.getCategoryNameByCategoryNo(Request.QueryString["categoryno"]);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            lbl.Text = "";
            DataSet1TableAdapters.MenuItemTableAdapter da = new DataSet1TableAdapters.MenuItemTableAdapter();
            da.Insert(Convert.ToInt32(Request.QueryString["CategoryNo"]), txtItemname.Text, Convert.ToInt32(txtPrice.Text), txtPacking.Text);
            lbl.Text = "item is Added" + da.Maxmenu();

        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        
        }

    }
}