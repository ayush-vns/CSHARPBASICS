using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dologin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            String UserName = txtusername.Text;
            String Password = txtpassword.Text;
            bool result = LoginManager.dologin(Password, UserName,Response,Session);
            if (!result) 
              
            lbl.Text = "invalid user name or password";
        }
        catch(Exception ex)
        {
        lbl.Text=ex.Message;
        }
    }
}