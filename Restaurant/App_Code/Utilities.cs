using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Utilities
/// </summary>
public class Utilities
{
    public static String getCategoryNameByCategoryNo(object CategoryNo)
    {
        try
        {
            DataSet1TableAdapters.RestaurantsTableAdapter da = new DataSet1TableAdapters.RestaurantsTableAdapter();
            String s = "" + da.FillBy(Convert.ToInt32(CategoryNo));
            return s;
        }
        catch
        {
            return "error";
        }


    }
    public static void Settablestatusbooked(object TableNo)
    {
        try
        {
            DataSet1TableAdapters.TableDetailsTableAdapter da = new DataSet1TableAdapters.TableDetailsTableAdapter();
            da.UpdateStatus(Convert.ToInt32(TableNo));



        }
        catch (Exception )
        {
            
        }
      

    }
           
        }
 
    
   
