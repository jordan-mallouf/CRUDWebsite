using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;

namespace CRUDProject
{
    public partial class create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Declare SQL connection
            SqlConnection registrationConnection = new SqlConnection(SqlDataSource1.ConnectionString);

            // Declare command
            SqlCommand registrationCommand = new SqlCommand(SqlDataSource1.InsertCommand);

            registrationCommand.Connection = registrationConnection;
            
            // TODO: Make sure column name match with SQL Server Management Studio
            registrationCommand.Parameters.AddWithValue("@Email", txtEmailC.Text);
            registrationCommand.Parameters.AddWithValue("@Password", txtPasswordC.Text);
            registrationCommand.Parameters.AddWithValue("@FName", txtFName.Text);
            registrationCommand.Parameters.AddWithValue("@LName", txtLName.Text);
            registrationCommand.Parameters.AddWithValue("@YOB", txtYOB.Text);

            // Open connection
            registrationConnection.Open();

            // Execute insert command
            registrationCommand.ExecuteNonQuery();

            // Close connection
            registrationConnection.Close();

            // Send to home page
            Response.Redirect("default.aspx");
        }
    }
}