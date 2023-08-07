using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Restaurantinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lbl.Text = "";
            DataSet1TableAdapters.RestaurantinfoTableAdapter da = new DataSet1TableAdapters.RestaurantinfoTableAdapter();
            DataSet1.RestaurantinfoDataTable dt = da.Restaurantinfo();
            if (dt.Rows.Count <= 0)
            {
                throw new Exception("invalid Data");
            }
            DataSet1.RestaurantinfoRow dr = (DataSet1.RestaurantinfoRow)dt.Rows[0];
            lblRestaurantName.Text = dr.RestaurantName;
            lblPhoneNo.Text = "" + dr.PhoneNo;
            lblAddress.Text = dr.Address;
            lblPincode.Text = "" + dr.Pincode;
            lblTagline.Text = "" + dr.Tagline;
        }
          catch(Exception ex )
        {
            lbl.Text = ex.Message;
            lblRestaurantName.Text ="";
            lblPhoneNo.Text = "";
            lblAddress.Text = "";
            lblPincode.Text = "";
            lblTagline.Text = "";
        
        }

    }
}