using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Connection
/// </summary>
public class Connection
{
    public static SqlConnection Set_Con()
    {
        //
        // TODO: Add constructor logic here
        //

        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=172.16.16.110\\SQL_SRV_INFOSIMA;Initial Catalog=VideoWall;Persist Security Info=True;User ID=Users;Password=SAAT";
        return con;
    }
}