using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace School_Site_Grade_10
{
    public partial class login : System.Web.UI.Page
    {
        public string firstName;
        public string lastName;
        public string error;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["sub1"] != null)
            {
                Session["message"] = null;
                string fileName = "users.accdb";
                string tableName = "UsersDB";
                firstName = "";
                lastName = "";

                string uName = Request.Form["uName"];
                string pWord = Request.Form["pWord"];

                string sql = "SELECT * FROM " + tableName + " WHERE username='" + uName + "' AND password='" + pWord + "'";

                if (uName == "AdminOmer" && pWord == "1")
                {
                    Session["Admin"] = "ok";
                    Session["Login"] = "kuku";
                    Response.Redirect("adminPage.aspx");
                }
                else if (MyAdoHelper.IsExist(fileName, sql))
                {
                    DataTable usersInDB = MyAdoHelper.ExecuteDataTable(fileName, sql);
                    Session["Login"] = Request.Form["uName"];
                    //Response.Redirect("ProfilePage.aspx");
                }
                else
                {
                    string errorString = "Incorrect username or password!";
                    error = "<div class='redContainer'>" + errorString + " </div>";
                }
            }

            if (Request.Form["sub2"] != null)
            {
                Session.Abandon();
                Response.Redirect("index.aspx");
            }
        }
    }
}