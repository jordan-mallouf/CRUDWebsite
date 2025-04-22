using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;

// TODO: Add Comments to code and submit.

namespace CRUDProject
{
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Checks if session is valid
                if (Session["User"] != null && Session["email"] != null)
                {
                    // Read current values from DB
                    SqlDataReader myReader;
                    SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);
                    SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand, myConnection);

                    // Send email as parameter
                    myCommand.Parameters.AddWithValue("@Email", Session["email"].ToString());

                    // Open connection
                    myConnection.Open();

                    // Execute Command
                    myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);

                    // Displays current information from database back to user using a while loop
                    while (myReader.Read())
                    {
                        lblEmail.Text = myReader.GetString(0);
                        lblPassword.Text = myReader.GetString(1);
                        lblFName.Text = myReader.GetString(2);
                        lblLName.Text = myReader.GetString(3);
                        lblYOB.Text = myReader.GetInt32(4).ToString();
                    }

                    // Close connection
                    myConnection.Close();

                    // Hide all fields initially
                    // Textboxes
                    txtPassword.Visible = false;
                    txtPasswordC.Visible = false;
                    txtFName.Visible = false;
                    txtLName.Visible = false;
                    txtYOB.Visible = false;

                    // Validators
                    rfvPassword.Visible = false;
                    cvPassword.Visible = false;
                    rfvFName.Visible = false;
                    rfvLName.Visible = false;
                    rfvYOB.Visible = false;

                    // Labels
                    lblNewValue.Visible = false;
                    lblPasswordC.Visible = false;

                    // Checkboxes
                    cbPassword.Checked = false;
                    cbFName.Checked = false;
                    cbLName.Checked = false;
                    cbYOB.Checked = false;
                }
                else
                {
                    Response.Redirect("default.aspx");
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            
            // Create connection
            SqlConnection updateConnection = new SqlConnection(SqlDataSource1.ConnectionString);

            // Create Update command
            SqlCommand UCommand = new SqlCommand(SqlDataSource1.UpdateCommand, updateConnection);

            // Set connection
            UCommand.Connection = updateConnection;

            // Parameters: Email
            UCommand.Parameters.AddWithValue("@Email", Session["email"].ToString());

            // Parameters: Password
            if (cbPassword.Checked == true)
            {
                UCommand.Parameters.AddWithValue("@Password", txtPasswordC.Text);
            }
            else
            {
                UCommand.Parameters.AddWithValue("@Password", lblPassword.Text);
            }

            // Parameters: First Name
            if ( cbFName.Checked == true)
            {
                UCommand.Parameters.AddWithValue("@FName", txtFName.Text);
            }
            else
            {
                UCommand.Parameters.AddWithValue("@FName", lblFName.Text);
            }

            // Parameters: Last Name
            if ( cbLName.Checked == true)
            {
                UCommand.Parameters.AddWithValue("@LName", txtLName.Text);
            }
            else
            {
                UCommand.Parameters.AddWithValue("@LName", lblLName.Text);
            }

            // Parameters: Year of Birth
            if (cbYOB.Checked == true)
            {
                UCommand.Parameters.AddWithValue("@YOB", txtYOB.Text);
            }
            else
            {
                UCommand.Parameters.AddWithValue("@YOB", lblYOB.Text);
            }

            // Open connection
            updateConnection.Open();

            // Execute command
            UCommand.ExecuteNonQuery();

            // Close connection
            updateConnection.Close();

            // Refresh page to show new information
            Response.Redirect("update.aspx");
        }

        // Logic for Checkboxes and hiding fields
        protected void cbPassword_CheckedChanged(object sender, EventArgs e)
        {
            if (cbPassword.Checked == true)
            {
                txtPassword.Visible = true;
                txtPasswordC.Visible = true;
                rfvPassword.Visible = true;
                rfvPassword.Enabled = true;
                lblNewValue.Visible = true;
                lblPasswordC.Visible = true;
                cvPassword.Enabled = true;
                cvPassword.Visible = true;
            }
            else
            {
                txtPassword.Visible = false;
                txtPasswordC.Visible = false;
                rfvPassword.Enabled = false;
                rfvPassword.Visible = false;
                lblNewValue.Visible = false;
                lblPasswordC.Visible = false;
                cvPassword.Enabled = false;
                cvPassword.Visible = false;
            }
        }

        protected void cbFName_CheckedChanged(object sender, EventArgs e)
        {
            if (cbFName.Checked == true)
            {
                txtFName.Visible = true;
                lblNewValue.Visible = true;
                rfvFName.Visible = true;
                rfvFName.Enabled = true;
            }
            else
            {
                txtFName.Visible = false;
                lblNewValue.Visible = false;
                rfvFName.Visible = false;
                rfvFName.Enabled = false;
            }
        }

        protected void cbLName_CheckedChanged(object sender, EventArgs e)
        {
            if (cbLName.Checked == true)
            {
                txtLName.Visible = true;
                lblNewValue.Visible = true;
                rfvLName.Visible = true;
                rfvLName.Enabled = true;
            }
            else
            {
                txtLName.Visible = false;
                lblNewValue.Visible = false;
                rfvLName.Visible = false;
                rfvLName.Enabled = false;
            }
        }

        protected void cbYOB_CheckedChanged(object sender, EventArgs e)
        {
            if (cbYOB.Checked == true)
            {
                txtYOB.Visible = true;
                lblNewValue.Visible = true;
                rfvYOB.Visible = true;
                rfvYOB.Enabled = true;
            }
            else
            {
                txtYOB.Visible = false;
                lblNewValue.Visible = false;
                rfvYOB.Visible = false;
                rfvYOB.Enabled = false;
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