using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("日付");
        dt.Columns.Add("開始時間");
        dt.Columns.Add("現在の予約数");
        dt.Rows.Add("11月14日", "10:00～", "0 席 / 5 席");
        dt.Rows.Add("11月14日", "14:00～", "0 席 / 5 席");
        dt.Rows.Add("11月14日", "16:00～", "5 席 / 5 席");
        dt.Rows.Add("11月17日", "10:00～", "3 席 / 5 席");
        dt.Rows.Add("11月17日", "14:00～", "4 席 / 5 席");
        dt.Rows.Add("11月17日", "16:00～", "0 席 / 5 席");
        dt.Rows.Add("11月24日", "14:00～", "1 席 / 5 席");

    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}

public class TimeStamp
{

}
