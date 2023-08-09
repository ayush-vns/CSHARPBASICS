using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LoginManager
/// </summary>
public class LoginManager
{
    private static string homepage = "Home.aspx",loginpage="dologin.aspx";
    public static Boolean isuserlogin(System.Web.SessionState.HttpSessionState session)
    {
        if (session["username"] == null)
            return false;
        return true;
    }
    public static void dologout(System.Web.SessionState.HttpSessionState session)
    {
        session.Abandon();
    }
    public static Boolean protectpage(System.Web.SessionState.HttpSessionState session, HttpResponse response)
    {
        if (isuserlogin(session))
            return true;
        response.Redirect(loginpage);
        return false;
    }

    public static String getcurrentuser(System.Web.SessionState.HttpSessionState session)
    {
        return "" + session["username"];

    }
    public static String getcurrentusertype(System.Web.SessionState.HttpSessionState session)
    {
        return "" + session["usertype"];

    }
    public static bool dologin(object password, object username, HttpResponse response, System.Web.SessionState.HttpSessionState session)
    {
        bool result = isusernameandpasswordcorrect(password, username);
        if (!result)
            return false;
        session["username"] = username;
        String userType = LoginManager.getcurrentusertype(session);
        session["usertype"] = userType;
      response.Redirect(homepage);
        return true;

    }


    public static bool isusernameandpasswordcorrect(object password, object username)
    {
        try
        {

            DataSet1TableAdapters.UsersFormTableAdapter da = new DataSet1TableAdapters.UsersFormTableAdapter();
            DataSet1.UsersFormDataTable dt = da.GetDataByloginform("" + username, "" + password);
            if (dt.Rows.Count <= 0)
                return false;
            return true;

        }
        catch (Exception ex)
        {
            return false;
        }

    }
    public static String getdatabyusername(object username)
    {
        try
        {
            DataSet1TableAdapters.UsersFormTableAdapter da = new DataSet1TableAdapters.UsersFormTableAdapter();
            string usertypeNo = "" + da.getusertypeNo("" + username);
           
            return usertypeNo;
        }

        catch (Exception ex)
        {
            return "";
        }
    }
}