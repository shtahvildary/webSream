using System;
using System.Data.SqlClient;
using System.Data;

public partial class main : System.Web.UI.Page
{
    public string VlcSrc;
    public string chName;

    static SqlDataAdapter adapter;
    static DataTable tblChannelsInfo = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["let"].ToString() == "n")
        {
            Response.Redirect("login.aspx");
        }
        

        if (!IsPostBack )
            {
     string[] ChNames=new string[40];

    string userID = Request.QueryString["userID"];
            SqlCommand command = new SqlCommand("SELECT channels.ID,channels.Name,channels.URL FROM channels INNER JOIN users_channels ON channels.ID = users_channels.channel_id where users_channels.user_id=" + userID, Connection.Set_Con());
            adapter = new SqlDataAdapter();
            //adapter.SelectCommand.Parameters.Add("@ID", SqlDbType.Int);
            //adapter.SelectCommand.Parameters.Add("@ChannelName", SqlDbType.NVarChar);
            //adapter.SelectCommand.Parameters.Add("@ChannelURL", SqlDbType.NVarChar);
            //adapter.SelectCommand.Parameters.Add("@StreamPort", SqlDbType.NVarChar);
            adapter.SelectCommand = command;

            try
            {
                Connection.Set_Con().Open();
                adapter.Fill(tblChannelsInfo);
                Connection.Set_Con().Close();
                string[] ChannelURL = new string[tblChannelsInfo.Rows.Count];
                string[] VlcSrcList = new string[tblChannelsInfo.Rows.Count];
                string liText = "";
                if (tblChannelsInfo.Rows.Count != 0)
                {
                    var streamInfoRow = tblChannelsInfo.Rows[0];
                    
                    for (int i = 0; i < tblChannelsInfo.Rows.Count; i++)
                    {
                        ChannelURL[i] = tblChannelsInfo.Rows[i]["URL"].ToString();
                        VlcSrcList[i] =  ChannelURL[i];

                        ChNames[i] = tblChannelsInfo.Rows[i]["Name"].ToString();

                        liText = liText + "<li role=\"presentation\">";
                        liText = liText + "<a class=\"dropdown-item\" role=\"menuitem\" tabindex=\"-1\" onclick=\"changeSrc('" + ChannelURL[i]+"','"+ ChNames[i]+"')\">";
                        liText = liText + ChNames[i];
                        liText = liText + "</a></li>";

                    }
                    tblChannelsInfo.PrimaryKey = new[] { tblChannelsInfo.Columns["ID"] };
                    litDropDown.Text = litDropDown.Text + liText;
                }

                VlcSrc = tblChannelsInfo.Rows[0]["URL"].ToString();
                chName = tblChannelsInfo.Rows[0]["Name"].ToString();
            }
            catch (Exception ex)
            {
                throw;
            }
        }  
    }

}