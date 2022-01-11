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
    public partial class admin_publisher_management : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //add button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckIfPublisherExists())
            {
                Response.Write("<script>alert('This Publisher ID already exist. You cannot add another publisher with the same ID.');</script>");
            }
            else
            {
                AddNewPublisher();
            }
        }

        //update button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckIfPublisherExists())
            {
                UpdatePublisher();

            }
            else
            {
                Response.Write("<script>alert('This Publisher does not exist.');</script>");
            }
        }

        //delete button
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (CheckIfPublisherExists())
            {
                DeletePublisher();

            }
            else
            {
                Response.Write("<script>alert('This Publisher does not exist.');</script>");
            }
        }

        //go button
        protected void Button3_Click(object sender, EventArgs e)
        {
            getPublisherById();
        }



        //user defined functions

        void getPublisherById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from publisher_master_tbl where publisher_id = '" + TextBox1.Text.Trim() + "';", con);

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

                //Response.Write("<script>alert('Publisher found Successfully!!!');</script>");





            }

            catch (Exception ex)

            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");



            }

        }

        void AddNewPublisher()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into publisher_master_tbl(publisher_id,publisher_name) values(@publisher_id,@publisher_name)", con);

                cmd.Parameters.AddWithValue("@publisher_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('New Publisher is added Successfully!!!');</script>");


                ClearForm();
                GridView1.DataBind();

            }

            catch (Exception ex)

            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }

        void UpdatePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update publisher_master_tbl set publisher_name=@publisher_name where publisher_id='" + TextBox1.Text.Trim() + "'", con);


                cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Publisher Name is updated Successfully!!!');</script>");


                ClearForm();
                GridView1.DataBind();

            }

            catch (Exception ex)

            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void DeletePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("delete from publisher_master_tbl where publisher_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Publisher is deleted Successfully!!!');</script>");


                ClearForm();

                GridView1.DataBind();


            }

            catch (Exception ex)

            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool CheckIfPublisherExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from publisher_master_tbl where publisher_id = '" + TextBox1.Text.Trim() + "';", con);

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

                //Response.Write("<script>alert('Sign up was successful, Go to user login page to login');</script>");





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