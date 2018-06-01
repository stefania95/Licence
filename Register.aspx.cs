using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "select count(*) from UserData where UserName='" + userNameTextBox.Text + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                LabelContNou.Visible = true;
                LabelContNou.Text = "Exista deja un cont cu acest User Name!";
            }
            conn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into UserData (UserName,Email,Password) values (@uName,@email,@password)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@uName", userNameTextBox.Text);
            com.Parameters.AddWithValue("@email", emailTextBox.Text);
            com.Parameters.AddWithValue("@password", PasswordTextBox.Text);

            com.ExecuteNonQuery();
            //Response.Redirect("Admin.aspx");
            LabelContNou.Visible = true;

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Eroare" + ex.ToString());
        }
    }
}