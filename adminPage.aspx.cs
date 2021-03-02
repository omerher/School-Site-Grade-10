using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace School_Site_Grade_10
{
    public partial class adminPage : System.Web.UI.Page
    {
        public string userList;
        public string userCount;
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "users.accdb";
            string tableName = "UsersDB";
            userList = "";

            string sql = "SELECT * FROM " + tableName;

            if (Request.Form["searchSub"] != null)
            {
                string searchValue = Request.Form["searchValue"];
                if (searchValue != "")
                {
                    sql = "SELECT * FROM " + tableName + " WHERE " + Request.Form["searchType"] + "='" + searchValue + "'";
                }
            }

            if (Request.Form["Reset"] != null)
            {
                sql = "SELECT * FROM " + tableName;
            }

            if (Request.Form["deleteSub"] != null)
            {
                string deleteValue = Request.Form["deleteValue"];
                string deleteSql = "DELETE FROM " + tableName + " WHERE " + Request.Form["deleteType"] + "='" + deleteValue + "'";
                MyAdoHelper.DoQuery(fileName, deleteSql);

            }

            DataTable usersInDB = MyAdoHelper.ExecuteDataTable(fileName, sql);

            int length = usersInDB.Rows.Count;
            if (length > 0)
            {
                userList += "<center><table class='users-table'>";
                userList += "<tr><th>ID number</th>";
                userList += "<th>First Name</th>";
                userList += "<th>Last Name</th>";
                userList += "<th>Email</th>";
                userList += "<th>Password</th>";
                userList += "<th>Gender</th>";
                userList += "<th>Date of Birth</th>";
                userList += "<th>Username</th>";
                userList += "</tr>";

                for (int i = 0; i < length; i++)
                {
                    userList += "<tr>";
                    userList += "<td>" + usersInDB.Rows[i]["ID"] + "</td>";
                    userList += "<td>" + usersInDB.Rows[i]["firstName"] + "</td>";
                    userList += "<td>" + usersInDB.Rows[i]["lastName"] + "</td>";
                    userList += "<td>" + usersInDB.Rows[i]["email"] + "</td>";
                    userList += "<td>" + usersInDB.Rows[i]["password"] + "</td>";
                    userList += "<td>" + usersInDB.Rows[i]["gender"] + "</td>";
                    userList += "<td>" + usersInDB.Rows[i]["birthDate"] + "</td>";
                    userList += "<td>" + usersInDB.Rows[i]["username"] + "</td>";
                    userList += "</tr>";
                }
                userList += "</table></center>";
                userCount = length.ToString();


            }
        }
    }
}