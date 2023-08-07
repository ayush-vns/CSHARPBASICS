using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tabledata : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet1TableAdapters.TableDetailsTableAdapter da = new DataSet1TableAdapters.TableDetailsTableAdapter();
        da.Insert(txtTablename.Text,Convert.ToInt32(txtNoofsets.Text),txtComment.Text,"free");
        GridView1.DataBind();
        lbl.Text = "Submited" + da.MaxTableNo();
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;

        }
       
        
    }
    
}