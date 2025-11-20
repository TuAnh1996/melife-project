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
        dt.Columns.Add("教室名");
        dt.Columns.Add("テキストID");
        dt.Columns.Add("テキスト名");
        dt.Columns.Add("最終変動日");
        dt.Columns.Add("在庫数");

        dt.Rows.Add("浜松教室","T1001","パソコンで水彩画入門","2010/1/24","14");
        dt.Rows.Add("本町教室", "T1345","ホームページ・ビルダー入門", "2010/1/24","53");
        dt.Rows.Add("天王寺教室","T1346", "ホームページ・ビルダー応用","2010/4/27","8");

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}

public class TimeStamp
{

}
