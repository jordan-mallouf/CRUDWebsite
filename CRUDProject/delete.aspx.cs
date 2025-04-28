using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUDProject
{
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User"] != null && Session["email"] != null)
                {
                    // Hide fields and make sure checkboxes are unchecked upon page load
                    cbDelete.Checked = false;
                    btnDelete.Visible = false;
                    cbLogoff.Checked = false;
                    btnLogoff.Visible = false;
                }
                else
                {
                    Response.Redirect("default.aspx");
                }
            }
        }

        // Delete Account button
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            // Create connection
            SqlConnection deleteConnection = new SqlConnection(SqlDataSource1.ConnectionString);

            // Initialize command
            SqlCommand deleteCommand = new SqlCommand(SqlDataSource1.DeleteCommand, deleteConnection);

            // Parameters
            deleteCommand.Parameters.AddWithValue("@Email", Session["email"].ToString());

            // Open connection
            deleteConnection.Open();

            // Execute statement
            deleteCommand.ExecuteNonQuery();

            // Close connection
            deleteConnection.Close();

            // Clears session and redirect to homepage
            Session.Clear();
            Response.Redirect("default.aspx");
        }

        // Logic for checking the checkboxes
        protected void cbDelete_CheckedChanged(object sender, EventArgs e)
        {
            if (cbDelete.Checked == true)
            {
                btnDelete.Enabled = true;
                btnDelete.Visible = true;
            }
            else
            {
                btnDelete.Enabled = false;
                btnDelete.Visible = false;
            }
        }

        // Logoff button checkbox logic
        protected void cbLogoff_CheckedChanged(object sender, EventArgs e)
        {
            if (cbLogoff.Checked == true)
            {
                btnLogoff.Enabled = true;
                btnLogoff.Visible = true;
            }
            else
            {
                btnLogoff.Enabled = false;
                btnLogoff.Visible = false;
            }
        }

        // Logoff button
        protected void btnLogoff_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("read.aspx");
        }
    }
}