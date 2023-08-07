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

        Label1.Text = Request.QueryString["TableNo"];
    
    }
 

     protected void Button1_Click1(object sender, EventArgs e)
    {
       

    }
     protected void Button3_Click(object sender, EventArgs e)
     {
         try
         {
             int TableNo = Convert.ToInt32(Label1.Text);

             DataSet1TableAdapters.BookingTableAdapter da1 = new DataSet1TableAdapters.BookingTableAdapter();
             da1.Insert(TableNo, DateTime.Now);
             DataSet1TableAdapters.BookingTableAdapter da = new DataSet1TableAdapters.BookingTableAdapter();
             da.Insert(TableNo, DateTime.Now);
             Utilities.Settablestatusbooked(TableNo);

             lbl.Text = "Table Booked" + da.MaxBooking();
         }
         catch (Exception ex)
         {
             lbl.Text = ex.Message;
         }

     }
}

//In the above code, we added a new button called btnUnbook and implemented the btnUnbook_Click event handler to handle the unbooking process. We also added logic in the Page_Load method