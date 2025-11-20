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
        dt.Columns.Add("受講生ID");
        dt.Columns.Add("受講生名");
        dt.Columns.Add("電話番号");
        dt.Columns.Add("携帯電話番号");
        dt.Columns.Add("最終受講日");
        dt.Columns.Add("フォロー履歴");
        dt.Columns.Add("担当者");
        dt.Columns.Add("フォロー方法");
        dt.Columns.Add("フォロー内容");

        dt.Rows.Add("00487","岩崎　義憲 様","XX-XXXX-XXXX","XXX-XXXX-XXXX","2010/10/7","2010/1/24","藤川","ダイレクトメール","ダイレクトメールの送付");
        dt.Rows.Add("00487", "岩崎　義憲 様","XX-XXXX-XXXX","XXX-XXXX-XXXX","2010/10/7","2010/1/24", "藤川", "電話応対", "未消化分のご案内");

        
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}

public class TimeStamp
{

}
