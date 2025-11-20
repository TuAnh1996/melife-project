<%@ Page Language="C#" AutoEventWireup="true" CodeFile="keep_reception2.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="./css/sub_StyleSheet.css" rel="stylesheet" type="text/css" />

    <script src="./js/prototype.js" type="text/javascript"></script>
    <script src="js/heightLine.js" type="text/javascript"></script>
    <script type="text/javascript">
        var startCell = null;
        //マウスダウンのイベント処理
        function mouseDown(table, e) {
            if (!e) var e = window.event;

            startCell = e.srcElement ? e.srcElement : e.target;
            if (startCell.tagName != "TD") {
                startCell = null;
                return;
            }
            mouseMove(table, e);
        }
        //マウスアップのイベント処理
        function mouseUp(table, e) {
            if (!e) var e = window.event;

            var endCell = e.srcElement ? e.srcElement : e.target;
            if (!(endCell.tagName == "TD" && startCell))
                return false;

            //セルの位置を取得
            var from = getCellPos(table, startCell);
            var to = getCellPos(table, endCell);
            if (!from || !to)
                return false;

            //mouseMoveで選択状態表示の更新をさせないようにする
            startCell = null;

            //ここに選択後の処理を書く
            showHistoryLog(event);
            //alert("(" + from.col + ", " + from.row + ") -> (" + to.col + ", " + to.row + ")");
        }
        //マウス移動のイベント処理
        function mouseMove(table, e) {
            if (!e) var e = window.event;

            var endCell = e.srcElement ? e.srcElement : e.target;
            if (!(endCell.tagName == "TD" && startCell))
                return false;

            //セルの位置を取得
            var from = getCellPos(table, startCell);
            var to = getCellPos(table, endCell);
            if (!from || !to)
                return false;

            //色を変更
            var x, y, cells;
            for (y = 0; y < table.rows.length; y++) {
                row = table.rows.item(y);
                for (x = 0; x < row.cells.length; x++) {
                    if ((from.row - y) * (y - to.row) >= 0 && (from.col - x) * (x - to.col) >= 0)
                        row.cells.item(x).style.backgroundColor = "#ffdddd"; //選択状態の色
                    else
                        row.cells.item(x).style.backgroundColor = "transparent"; //未選択状態の色
                }
            }
        }
        //tableの中のcellの位置を取得する
        function getCellPos(table, cell) {
            var pos = new Object();
            if (cell.nodeName == "TD") {
                var x, y, cells;
                for (y = 0; y < table.rows.length; y++) {
                    row = table.rows.item(y);
                    for (x = 0; x < row.cells.length; x++) {
                        if (row.cells.item(x) == cell) {
                            pos.row = y;
                            pos.col = x;
                            return pos;
                        }
                    }
                }
            }
            return null;
        }

        function showHistoryLog(event) {
            $get('history_log').style.visibility = 'visible';
            $get('history_log').style.left = Event.pointerX(event) + 10;
            $get('history_log').style.top = Event.pointerY(event) + 10;
        }
        function hiddenHistoryLog(event) {
            $get('history_log').style.visibility = 'hidden';
        }

        function pageLoad() {
            hiddenHistoryLog();
        }
    </script>
    </head>
<body>
    <form id="form1" runat="server">
        <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>
    <div id="header">
        　ヘッダー
    </div>
    <div id="container">
    
    <div id="left" class="heightLine">

        <ajaxToolkit:DragPanelExtender ID="DragPanelExtender2" runat="server" DragHandleID="history_log_header" TargetControlID="history_log">
    </ajaxToolkit:DragPanelExtender>
        <div id="dbase3">
            <asp:Panel ID="history_log" runat="server">
            <table class="confirm_window">
            <tr><td>
            <asp:Panel ID="history_log_header" runat="server" BackColor="#94D315" 
                    Font-Bold="True" ForeColor="White" 
                    Width="200px" Height="20px" BorderWidth="0px" CssClass="dragMe">
            <div class="title" style="width:100px;">-座席の確保</div><div class="close" style="width:195px;">
                <input type="image" src="./img/close.png" onclick="hiddenHistoryLog(); return false;" /></div>
            </asp:Panel>
            </td></tr>
            <tr><td class="body" style="text-align:right;">
            <asp:Panel ID="history_log_body" runat="server" Width="190px" 
                    BackColor="White" BorderWidth="0px">
                <asp:TextBox ID="TextBox3" runat="server" Width="60px"></asp:TextBox>
                人 / 40人<hr />
                <div style="text-align:right;">
                <input id="Button6" type="button" onclick="hiddenHistoryLog();" value="反映" />
                    <input 
                        id="Button10" type="button" onclick="hiddenHistoryLog();" value="キャンセル" />
                    &nbsp;
                </div>
            </asp:Panel>
            </td></tr>
            </table>
            </asp:Panel>
        </div>
        <h2>入学予定者用座席確保画面</h2>
    <table class="reservation"  onmousedown="mouseDown(this, event); return false;" onmouseup="mouseUp(this, event);" onmousemove="mouseMove(this, event); return false;">
        <tr class="header"><td></td><td>&nbsp;</td><td>10:00<br />│<br />10:50</td><td>11:00<br />│<br />11:50</td><td>12:00<br />│<br />12:50</td><td>
            お昼</td><td>14:00<br />│<br />14:50</td><td>15:00<br />│<br />15:50</td><td>16:00<br />│<br />16:50</td><td>
            休憩</td><td>18:30<br />│<br />19:20</td><td>19:30<br />│<br />20:20</td></tr>
        <tr><td class="date">1日</td><td class="date">（金）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td><td>
            0</td><td>
                0</td>
            </tr>
        <tr><td class="date">2日</td><td class="date">（土）</td><td>
            3</td><td>
                3</td><td>
                3</td><td class="g"></td><td>
            3</td><td>
                3</td><td>
                3</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="g date">3日</td><td class="g date">（日）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">4日</td><td class="date">（月）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">5日</td><td class="date">（火）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td><td>
            0</td><td>
                0</td>
            </tr>
        <tr><td class="date">6日</td><td class="date">（水）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td><td>
            0</td><td>
                0</td>
            </tr>
        <tr><td class="date">7日</td><td class="date">（木）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr style="border:2px solid #000000; background-color:Orange;"><td class="date">8日</td><td class="date">（金）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td><td>
            0</td><td>
                0</td>
            </tr>
        <tr><td class="date">9日</td><td class="date">（土）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="g date">10日</td><td class="g date">（日）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="g date">11日</td><td class="g date">（月）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">12日</td><td class="date">（火）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td><td>
            0</td><td>
                0</td>
            </tr>
        <tr><td class="date">13日</td><td class="date">（水）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td><td>
            0</td><td>
                0</td>
            </tr>
        <tr><td class="date">14日</td><td class="date">（木）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">15日</td><td class="date">（金）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g date"></td><td>
            0</td><td>
                0</td>
            </tr>
        <tr><td class="date">16日</td><td class="date">（土）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td>
            <td class="g date"></td><td class="g"></td></tr>
        <tr><td class="g date">17日</td><td class="g date">（日）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">18日</td><td class="date">（月）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">19日</td><td class="date">（火）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td><td>
            0</td><td>
                0</td>
            </tr>
        <tr><td class="date">20日</td><td class="date">（水）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td><td>
            0</td><td>
                0</td>
            </tr>
        <tr><td class="date">21日</td><td class="date">（木）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">22日</td><td class="date">（金）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td><td>
            0</td><td>
                0</td>
            </tr>
        <tr><td class="date">23日</td><td class="date">（土）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="g date">24日</td><td class="g date">（日）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">25日</td><td class="date">（月）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">26日</td><td class="date">（火）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td><td>
            0</td><td>
                0</td>
            </tr>
        <tr><td class="date">27日</td><td class="date">（水）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td><td>
            0</td><td>
                0</td>
            </tr>
        <tr><td class="date">28日</td><td class="date">（木）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">29日</td><td class="date">（金）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td><td>
            0</td><td>
                0</td>
            </tr>
        <tr><td class="date">30日</td><td class="date">（土）</td><td>
            0</td><td>
                0</td><td>
                0</td><td class="g"></td><td>
            0</td><td>
                0</td><td>
                0</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="g date">31日</td><td class="g date">（日）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        </table>
    </div>
    <div id="right" class="heightLine">
    　ツールボックス
    </div>
    <div style="clear:both"></div>
    </div>
    </form>
</body>
</html>

