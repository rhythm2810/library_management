using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System
{
    public partial class admin_author_management : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //add button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(CheckIfAuthorExists())
            {
                Response.Write("<script>alert('This Author ID already exist. You cannot add another author with the same ID.');</script>");
            }
            else
            {
                AddNewAuthor();
            }
        }

        //update button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckIfAuthorExists())
            {
                UpdateAuthor();
                
            }
            else
            {
                Response.Write("<script>alert('This Author does not exist.');</script>");
            }
        }

        //delete button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (CheckIfAuthorExists())
            {
                DeleteAuthor();

            }
            else
            {
                Response.Write("<script>alert('This Author does not exist.');</script>");
            }
        }

        //go button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            getAuthorById();
        }

        //user defined function

        void getAuthorById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from author_master_tbl where author_id = '" + TextBox1.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Author ID');</script>");
                }

                con.Close();

                //Response.Write("<script>alert('Author found Successfully!!!');</script>");





            }

            catch (Exception ex)

            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

                

            }

        }



        void AddNewAuthor()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into author_master_tbl(author_id,author_name) values(@author_id,@author_name)", con);

                cmd.Parameters.AddWithValue("@author_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());
                
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('New Author is added Successfully!!!');</script>");


                ClearForm();
                GridView1.DataBind();

            }

            catch (Exception ex)

            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }



        void UpdateAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update author_master_tbl set author_name=@author_name where author_id='"+TextBox1.Text.Trim()+"'", con);

                
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Author Name is updated Successfully!!!');</script>");


                ClearForm();
                GridView1.DataBind();

            }

            catch (Exception ex)

            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void DeleteAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("delete from author_master_tbl where author_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Author is deleted Successfully!!!');</script>");


                ClearForm();

                GridView1.DataBind();


            }

            catch (Exception ex)

            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        bool CheckIfAuthorExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from author_master_tbl where author_id = '" + TextBox1.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

                con.Close();

                Response.Write("<script>alert('Sign up was successful, Go to user login page to login');</script>");





            }

            catch (Exception ex)

            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

                return false;

            }

        }


        void ClearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}