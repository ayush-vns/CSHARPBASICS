using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BookingManager
/// </summary>
public class BookingManager
{
    public static string GetBookingUrl(object tableno)
    {
        if (isBooked(tableno))
            return "Booked Already";
        return "<a href='Bookingtable.aspx?TableNo=" + tableno + "'>Book Now</a>";

    }

    public static bool isBooked(Object TableNo)
    {
        try
        {
            string status = GetBookingStatusByTableNo(TableNo);
            if (status.Equals("booked"))
                return true;

            return false;

        }
        catch (Exception ex )
        {
            return true;
        }  

    }
    public static string getunbookingurl(object TableNo)
    {
           
            if (unbooked(TableNo))
                return "unbooking";
            return "<a href='Bookingtable.aspx?TableNo= '>unbook Now</a>";
    }

    public static bool unbooked(Object TableNo)
    {
        try
        {
            string status = GetBookingStatusByTableNo(TableNo);
            if (status.Equals("unbooked"))
                return true;

            return false;

        }
        catch (Exception ex)
        {
            return true;
        }  
        
        
        
    
    }

    public static String GetBookingStatusByTableNo(Object TableNo)
    {
        try
        {
            DataSet1TableAdapters.TableDetailsTableAdapter da = new DataSet1TableAdapters.TableDetailsTableAdapter();
          return ""+  da.GetBookingStatusByTableNo(Convert.ToInt32(TableNo));

        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    
    }
}