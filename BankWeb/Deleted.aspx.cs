using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Deleted : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            lbl.Text = "";
            DataSet1TableAdapters.accountdataTableAdapter da = new DataSet1TableAdapters.accountdataTableAdapter();
            DataSet1.accountdataDataTable dt = da.GetDataByAccountNo(Convert.ToInt32(txtAccountNo.Text));
            if (dt.Rows.Count <= 0)
            {
                throw new Exception("Invalid Account No");
            }
            DataSet1.accountdataRow dr = (DataSet1.accountdataRow)dt.Rows[0];
            lblName.Text = dr.name;
            lblBalance.Text = "" + dr.balance;
            Button2.Enabled = true;
            Button1.Enabled = false;
            txtAccountNo.ReadOnly = true;

        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
            lblName.Text = "";
            lblBalance.Text = "";
        }
        Button1.Enabled = true;
        txtAccountNo.Enabled = true;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet1TableAdapters.accountdataTableAdapter da = new DataSet1TableAdapters.accountdataTableAdapter();
            int accountNoToDelete = Convert.ToInt32(txtAccountNo.Text);
            da.Delete(accountNoToDelete);
            lblName.Text = "";
            lblBalance.Text = "";
            lbl.Text= ("Account deleted successfully.");
            
           
        }
        catch (Exception ex)
        {
            lbl.Text=("Error occurred: " + ex.Message);
        }
        try
        {
            DataSet1TableAdapters.accountdataTableAdapter da = new DataSet1TableAdapters.accountdataTableAdapter();
            int accountNoToDelete = Convert.ToInt32(txtAccountNo.Text);
            da.Delete(accountNoToDelete);
            lblName.Text = "";
            lblBalance.Text = "";
            lbl.Text= ("Account deleted successfully.");
            
           
        }
        catch (Exception ex)
        {
            lbl.Text=("Error occurred: " + ex.Message);
        }

    }
}