using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string checkUser = "select count(*) from UserData where UserName='" + userNameTextBox.Text + "'";
        SqlCommand com = new SqlCommand(checkUser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPassword = "select password from UserData where UserName='" + userNameTextBox.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPassword, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
            if (password == passwordTextBox.Text)
            {
                Session["New"] = userNameTextBox.Text;
                Response.Redirect("Main.aspx");
            }
            else
            {
                Response.Write("Parola este incorecta!");
            }
        }
        else
        {
            Response.Write("Numele de utilizator este incorect!");

        }

    }
    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

    protected void RegisterButton_Click1(object sender, EventArgs e)
    {
        Server.Transfer("Register.aspx");
    }
}