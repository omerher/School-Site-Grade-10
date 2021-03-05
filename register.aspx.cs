using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace School_Site_Grade_10
{
    public partial class register : System.Web.UI.Page
    {
        public string UserAlreadyExists = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string tableName = "UsersDB";

            if (Request.Form["submit"] != null)
            {
                string idNum = Request.Form["idNum"];
                string fName = Request.Form["fName"];
                string lName = Request.Form["lName"];
                string eMail = Request.Form["eMail"];
                string bDay = Request.Form["bDay"];
                string gender = Request.Form["gender"];
                string pWord = Request.Form["pWord"];
                string uName = Request.Form["uName"];

                string fileName = "users.accdb";

                string sql = "SELECT * FROM " + tableName + " WHERE ID= '" + idNum + "'";
                DataTable usersInDB = MyAdoHelper.ExecuteDataTable(fileName, sql);
                if (usersInDB.Rows.Count <= 0)
                {
                    sql = "SELECT * FROM " + tableName + " WHERE email= '" + eMail + "'";
                    usersInDB = MyAdoHelper.ExecuteDataTable(fileName, sql);
                    if (usersInDB.Rows.Count <= 0)
                    {
                        sql = "SELECT * FROM " + tableName + " WHERE username= '" + uName + "'";
                        if (!MyAdoHelper.IsExist(fileName, sql))
                        {
                            sql = $"INSERT INTO {tableName} ([ID], [firstName], [lastName], [email], [password], [gender], [birthDate], [username]) " +
                                $"VALUES ('{idNum}', '{fName}', '{lName}', '{eMail}', '{pWord}', '{gender}', '{bDay}', '{uName}')";

                            MyAdoHelper.DoQuery(fileName, sql);
                            Session["message"] = "Registered Succesfully!";
                            Response.Redirect("index.aspx");
                        }
                        else
                            UserAlreadyExists = "<div class='redContainer'>A user with this username already exists.</div> ";
                    }
                    else
                        UserAlreadyExists = "<div class='redContainer'>A user with this email already exists.</div> ";
                }
                else
                    UserAlreadyExists = "<div class='redContainer'>A user with this ID number already exists.</div> ";
            }
        }
    }
}