using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HesteListen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonTilmeld_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();        
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ToString();

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;

        conn.Open();

        cmd.CommandText = "INSERT INTO abonnent (Navn, Email, Telefon) VALUES(@Navn, @Email, @Telefon)";
        cmd.Parameters.AddWithValue("@Navn", TextBoxNavn.Text);
        cmd.Parameters.AddWithValue("@Email", TextBoxEmail.Text);
        cmd.Parameters.AddWithValue("@Telefon", TextBoxTelefon.Text);

        cmd.ExecuteNonQuery();      
      
        conn.Close();
    
        LabelRespons.Text = "Tak for din tilmelding. Du vil nu modtage vores nyhedsbrev.";
        TextBoxNavn.Text = "";
        TextBoxEmail.Text = "";
        TextBoxTelefon.Text = "";
    }
    protected void ButtonAfmeld_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();        
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ToString();

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;

        conn.Open();

        cmd.CommandText = "DELETE FROM abonnent WHERE Email = @Email";
        cmd.Parameters.AddWithValue("@Email", TextBoxEmailSlet.Text);

        cmd.ExecuteNonQuery();
        conn.Close();

        LabelResponsAfmeld.Text = "Selv om vi belager din afmelding, er den nu fuldbyrdet!";
        TextBoxEmailSlet.Text = "";
    }
}