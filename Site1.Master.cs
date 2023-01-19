using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]==null)
                {
      linkButton1.Visible=true;//user log in link button
              linkButton2.Visible = true;//user sign up link button

                    linkButton3.Visible = false;//log out button
                    linkButton7.Visible = false;//hello user

                    //Admin options
                    linkButton6.Visible = true;//admin log in link button
                    linkButton11.Visible = false;//author management

                    linkButton12.Visible = false;//publisher management
                    linkButton8.Visible = false;//book inventory
                    linkButton9.Visible = false;//Book issuing
                    linkButton10.Visible = false;//member management


                }
                else if(Session["role"].Equals("user"))
                {
                    linkButton1.Visible = false;//user log in link button
                    linkButton2.Visible = false;//user sign up link button

                    linkButton3.Visible = true;//log out button
                    linkButton7.Visible = true;//hello user
                    linkButton7.Text= "Hello  "+Session["username"].ToString();


                    linkButton6.Visible = true;//admin log in link button
                    linkButton11.Visible = false;//author management

                    linkButton12.Visible = false;//publisher management
                    linkButton8.Visible = false;//book inventory
                    linkButton9.Visible = false;//Book issuing
                    linkButton10.Visible = false;//member management

                }
                else if (Session["role"].Equals("admin"))
                {
                    linkButton1.Visible = false;//user log in link button
                    linkButton2.Visible = false;//user sign up link button

                    linkButton3.Visible = true;//log out button
                    linkButton7.Visible = true;//hello user
                    linkButton7.Text = "Hello Admin";


                    linkButton6.Visible = false;//admin log in link button
                    linkButton11.Visible = true;//author management

                    linkButton12.Visible = true;//publisher management
                    linkButton8.Visible = true;//book inventory
                    linkButton9.Visible = true;//Book issuing
                    linkButton10.Visible = true;//member management

                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');" +
                    "</script>");
            }
           
        }

        protected void linkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void linkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminauthormanagement.aspx");
        }

        protected void linkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminpublishermanagement.aspx");
        }

        protected void linkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBookInventory.aspx");
        }

        protected void linkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminbookissuing.aspx");
        }

        protected void linkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminmembermanagement.aspx");
        }

        protected void linkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void linkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void linkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void linkButton3_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('log in successful');</script>");
            Session["username"] ="";
            Session["fullname"]="";
            Session["role"] = "";
            Session["session"] ="";
            linkButton1.Visible = true;//user log in link button
            linkButton2.Visible = true;//user sign up link button

            linkButton3.Visible = false;//log out button
            linkButton7.Visible = false;//hello user

            //Admin options
            linkButton6.Visible = true;//admin log in link button
            linkButton11.Visible = false;//author management

            linkButton12.Visible = false;//publisher management
            linkButton8.Visible = false;//book inventory
            linkButton9.Visible = false;//Book issuing
            linkButton10.Visible = false;//member management

            Response.Redirect("HomePage.aspx");
        }

        protected void linkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }
    }
}