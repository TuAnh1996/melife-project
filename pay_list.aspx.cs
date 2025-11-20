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
        dt.Columns.Add("入金日");
        dt.Columns.Add("領収書番号");
        dt.Columns.Add("受講生ID");
        dt.Columns.Add("受講生名");
        dt.Columns.Add("会員");
        dt.Columns.Add("入金区分");
        dt.Columns.Add("備考");
        dt.Columns.Add("購入時間数");
        dt.Columns.Add("入金金額");

        dt.Rows.Add("2010/12/6","53009","427","岡田　文夫","一般","更新","1月分","4",@"5,800円");
        dt.Rows.Add("2010/12/6", "53010", "465", "生川　敬子", "一般", "追加", "12月分", "4", @"5,800円");
        dt.Rows.Add("2010/12/6", "53011", "786", "岡　義孝", "会員", "更新", "1月分", "4", @"9,000円");

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
