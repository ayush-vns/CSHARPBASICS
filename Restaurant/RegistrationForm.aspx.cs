using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistrationForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (!txtPassword.Text.Equals(txtConfirmPassword.Text))
            throw new Exception("Passwords do not matched");
            DataSet1TableAdapters.UsersFormTableAdapter da = new DataSet1TableAdapters.UsersFormTableAdapter();
            da.Insert(txtUsername.Text, txtName.Text, Convert.ToInt32(ddl.SelectedValue), txtPassword.Text);
            lbl.Text = "details submited";

        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }
    }
}