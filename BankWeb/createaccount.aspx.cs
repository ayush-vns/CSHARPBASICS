using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class createaccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            DataSet1TableAdapters.accountdataTableAdapter da = new DataSet1TableAdapters.accountdataTableAdapter();
        
            da.Insert(txtName.Text, Convert.ToInt32(txtBalance.Text));
            lbl.Text = "account created your account no is" + da.MaxAccount();
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }
        Button1.Enabled = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtBalance.Text = "";
        txtName.Text = "";
        lbl.Text = "";

    }
}