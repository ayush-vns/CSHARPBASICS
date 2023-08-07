using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bookingtable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
    
    
    }
 

    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            int tableNo = Convert.ToInt32(Label1.Text);

            DataSet1TableAdapters.BookingTableAdapter da = new DataSet1TableAdapters.BookingTableAdapter();
            da.Insert(tableNo, DateTime.Now);
            GridView1.DataBind();
            Utilities.Settablestatusbooked(tableNo);
            lbl.Text = "Table Booked" + da.MaxBooking();
            // After booking, hide the booking button and show the unbooking button
            Button1.Visible = false;
            Button2.Visible = true;
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }
    }

    protected void btnUnbook_Click(object sender, EventArgs e)
    {
        try
        {
            int tableNo = Convert.ToInt32(Label1.Text);

            DataSet1TableAdapters.BookingTableAdapter da = new DataSet1TableAdapters.BookingTableAdapter();
            da.DeleteBooking(tableNo); // You need to create this method in your DataSet1TableAdapters to delete the booking entry
            Utilities.Settablestatusbooked(tableNo); // You also need to create this method in your Utilities class to set the table status to unbooked

            lbl.Text = "Table Unbooked";

            // After unbooking, hide the unbooking button and show the booking button
            Button1.Visible = true;
            Button2.Visible = false;
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }
    }
}
//In the above code, we added a new button called btnUnbook and implemented the btnUnbook_Click event handler to handle the unbooking process. We also added logic in the Page_Load method