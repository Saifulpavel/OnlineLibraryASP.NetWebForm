using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OnlineLibrary
{
    public partial class usersignup : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void SignUpNewMember()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(connection);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string query = @"INSERT INTO [dbo].[MemberMaster]([FullName],[Dob],[ContactNo],[Email]
                                ,[State],[City],[PinCode],[FullAddress],[MemberId],[Password],[AccountStatus])
                                 VALUES (@FullName,@Dob,@ContactNo,@Email
                                ,@State,@City,@PinCode,@FullAddress,@MemberId,@Password,@AccountStatus)";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@FullName", txtFullName.Text.Trim());
                cmd.Parameters.AddWithValue("@Dob", txtDateOfBirth.Text.Trim());
                cmd.Parameters.AddWithValue("@ContactNo", txtContactNo.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@State", cboState.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());
                cmd.Parameters.AddWithValue("@PinCode", txtPinCode.Text.Trim());
                cmd.Parameters.AddWithValue("@FullAddress", txtFullAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@MemberId", txtUserId.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                cmd.Parameters.AddWithValue("@AccountStatus", "Pending");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up successfull.Please Login.');</script>");
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
       
        //Check Duplicate Member ID
        bool CheckMemberExixts()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(connection);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = @"SELECT * FROM [MemberMaster] WHERE [MemberId]='"+txtUserId.Text.Trim().ToString()+"'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >=1)
                {
                    return true;
                }
                else
                {
                    return false;
                }                 
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        //SignUp Button click event
        protected void SignUp(object sender, EventArgs e)
        {
            if (CheckMemberExixts())
            {
                Response.Write("<script>alert('Member already exists.Please try another ID.');</script>");
            }
            else
            {
                SignUpNewMember();
            }
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}