using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace School_Site_Grade_10
{
    public partial class userPage : System.Web.UI.Page
    {
        public string firstName;
        public string lastName;
        public string IDNum;
        public string email;
        public string gender;
        public string bDay;
        public string username;
        public string userList;
        public string userAlreadyExists;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] != null)
            {
                string fileName = "users.accdb";
                string tableName = "UsersDB";
                username = Session["Login"].ToString();

                string sql = "SELECT * FROM " + tableName + " WHERE username='" + username + "'";
                DataTable UserInfo = MyAdoHelper.ExecuteDataTable(fileName, sql);

                firstName = "" + UserInfo.Rows[0]["firstName"];
                lastName = "" + UserInfo.Rows[0]["lastName"];
                IDNum = "" + UserInfo.Rows[0]["ID"];
                email = "" + UserInfo.Rows[0]["email"];
                gender = "" + UserInfo.Rows[0]["gender"];
                bDay = "" + UserInfo.Rows[0]["birthDate"];

                sql = "SELECT * FROM " + tableName + " WHERE username NOT IN('" + Session["Login"].ToString() + "')";

                DataTable usersInDB = MyAdoHelper.ExecuteDataTable(fileName, sql);

                int length = usersInDB.Rows.Count;
                if (length > 0)
                {
                    userList += "<center><table id='customers'>";
                    userList += "<th>Username</th>";
                    userList += "<th>Email</th>";
                    userList += "<th>Gender</th>";
                    userList += "</tr>";

                    for (int i = 0; i < length; i++)
                    {
                        userList += "<tr>";
                        userList += "<td>" + usersInDB.Rows[i]["username"] + "</td>";
                        userList += "<td>" + usersInDB.Rows[i]["email"] + "</td>";
                        userList += "<td>" + usersInDB.Rows[i]["gender"] + "</td>";
                        userList += "</tr>";
                    }
                    userList += "</table></center>";

                    if (Request.Form["updateSub"] != null)
                    {
                        bool validValue = true;
                        if (Request.Form["updateField"] == "email")
                        {
                            sql = "SELECT * FROM " + tableName + " WHERE email= '" + Request.Form["updateValue"] + "' AND username NOT IN ('" + Session["Login"].ToString() + "')";
                            if (MyAdoHelper.IsExist(fileName, sql))
                            {
                                validValue = false;

                            }
                        }
                        if (Request.Form["updateField"] == "uName")
                        {
                            sql = "SELECT * FROM " + tableName + " WHERE username= '" + Request.Form["updateValue"] + "' AND username NOT IN ('" + Session["Login"].ToString() + "')";
                            if (MyAdoHelper.IsExist(fileName, sql))
                            {
                                validValue = false;
                            }
                        }
                        if (validValue)
                        {
                            string field = Request.Form["updateField"];
                            string value = Request.Form["updateValue"];
                            sql = "UPDATE " + tableName + " SET [" + field + "]='" + value + "' WHERE [username]='" + Session["Login"].ToString() + "'";
                            MyAdoHelper.DoQuery(fileName, sql);
                            if (field == "username")
                                Session["Login"] = value;
                            Response.Redirect("userPage.aspx");
                        }
                        else
                        {
                            userAlreadyExists = "<div class='redContainer'>A user with that email address/ID already exists! Try again.</div> ";
                        }
                    }
                }
            }
            else
            {
                Session["error"] = "You are not logged in! Please create on account";
                Response.Redirect("Login.aspx");
            }
        }
    }
}