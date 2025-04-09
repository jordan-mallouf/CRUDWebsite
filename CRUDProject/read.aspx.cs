using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace CRUDProject
{
    public partial class read : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Declare variables
            string sEmail = "";
            string sPassword = "";
            string sUser = "";

            // Declare a sqldatareader to store query results
            SqlDataReader myReader;

            // Declare sqlconnection to connect to the database
            SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);

            // Declare a command and set the select statement
            SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand);

            // Set connection for our command to use
            myCommand.Connection = myConnection;

            // Set the parameters
            // Parameters for email from the textbox
            myCommand.Parameters.AddWithValue("@Email", txtEmail.Text);

            // Parameter for password from the textbox
            // Open the connection
            myConnection.Open();

            // Execute the Select Command and assign to myReader
            myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);

            // While the reader is being populated, assign the values from the query to the variables
            while (myReader.Read())
            {
                sEmail = myReader.GetString(0);
                sPassword = myReader.GetString(1);
                sUser = myReader.GetString(2) + " " + myReader.GetString(3);
            }

            if (txtEmail.Text == sEmail && txtPassword.Text == sPassword)
            {
                // Success, send to success page and create session variable
                Session["User"] = sUser;
                Response.Redirect("success.aspx");
            }
            else
            {
                // Display error
                lblMessage.Text = "Wrong credentials. Please try again!";
            }

        }
    }
}