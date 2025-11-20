<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="./css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="./js/prototype.js" type="text/javascript"></script>
    <script src="js/heightLine.js" type="text/javascript"></script>
    <script type="text/javascript">

        //set_parameterテキストボックスにonClickEventの引数をセット
        function set_parameter(param) {
            document.getElementById("txt_hidden").value = param;
        }

        function hiddenDetailsView() {
            $get('pnl').style.visibility = 'hidden';
        }

        function showStudentDetail(event) {
            $get('student_detail').style.visibility = 'visible';
            $get('student_detail').style.left = Event.pointerX(event) + 10;
            $get('student_detail').style.top = Event.pointerY(event) + 10;
        }

        function hiddenStudentDetail() {
            $get('student_detail').style.visibility = 'hidden';
        }

        function showDetailsView(event) {
            $get('pnl').style.visibility = 'visible';
            $get('pnl').style.left = Event.pointerX(event) + 10;
            $get('pnl').style.top = Event.pointerY(event) + 10;
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
            hiddenDetailsView();
            hiddenStudentDetail();
            hiddenHistoryLog();
        }
    </script>
    </head>
<body>
    <form id="form1" runat="server">
        <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>
    <div id="header">
        <div id="id">
        <img alt="" src="img/site_id.png" />
        </div>
        
        <div id="menu">
        <ul>
            <a href="#"><li><p><img src="img/money_icon.png" /></p><p>集計</p></li></a>
            <a href="#"><li><p><img src="img/graph_icon.png" /></p><p>売上管理</p></li></a>
            <a href="#"><li><p><img src="img/text_icon.png" /></p><p>教材管理</p></li></a>
            <a href="#"><li id="end"><p><img src="img/control_icon.png" /></p><p>システム管理</p></li></a>
        </ul>
        </div>
    </div>
    <div id="container">
    <div id="sub" class="heightLine">
    <div id="search_box">
        <table style="width: 100%;">
            <tr class="title"><td>受講生検索</td></tr>
            <tr class="body"><td>
            <asp:TextBox ID="TextBox1" runat="server" Width="72%" Font-Size="12px" Font-Bold="False"></asp:TextBox><asp:Button ID="Button3" runat="server" Text="照会" /><br />
        <asp:Button ID="Button4" runat="server" Text="名前検索" />
            </td></tr>
        </table>
    </div>
    <div id="student_info">
            <h1>岩崎　義憲 さんの情報</h1>
            <p>
            ふりがな：いわさき　よしのり さん<br />
            現在の状況：受講中
            </p>
            <img class="line" alt="" src="./img/line_y.jpg" />
            <p>
            会員：<asp:RadioButton ID="RadioButton5" runat="server" 
                    Text="会員" GroupName="kaiin" />
            <asp:RadioButton ID="RadioButton6" runat="server" Text="非会員" GroupName="kaiin" /><br />
            企業名：XXXXXX株式会社
            </p>
            <img class="line" alt="" src="./img/line_y.jpg" />
            <p>
            担当者：XXXX
            </p>
            <img class="line" alt="" src="./img/line_y.jpg" />
            <p>
            現在受講中の講座：<br />
            パソコン入門Windows7編
            </p>
            <img class="line" alt="" src="./img/line_y.jpg" />
            <p>
            現在の予約時間数：<br />
            8 時間 / 10 時間 （繰越 2 時間）
            </p>
            <img class="line" alt="" src="./img/line_y.jpg" />
            <p>
            次月分の入金：9月6日に入金済み
            </p>
            <img class="line" alt="" src="./img/line_y.jpg" />
            <p>
            OS：<asp:RadioButton ID="RadioButton1" runat="server" Text="XP" GroupName="os" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Vista" GroupName="os" />
            <asp:RadioButton ID="RadioButton3" runat="server" Text="7" GroupName="os" />
            </p>
            <img class="line" alt="" src="./img/line_y.jpg" />
            <p>
            メモ欄：<br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="margin_zero" Rows="4" 
                    TextMode="MultiLine" Width="100%" Font-Size="12px"></asp:TextBox>
            </p>
            <br />
            <p>
        <input id="Button9" type="button" value="詳細表示" onclick="showStudentDetail(event);return false;" />
        <input id="Button7" type="button" value="変更履歴" onclick="showHistoryLog(event);return false;" />
        </p>
</div>
    <h2>MEMO PAD</h2>
    <div id="memo_pad">
    <ul>
    <li>あああ</li>
    <li>みいい</li>
    </ul>
    </div>
    <asp:Button ID="Button5" Width="100%" runat="server" Text="メモを追加する" />
    </div>
    
    <div id="left" class="heightLine">
    <ajaxToolkit:DragPanelExtender ID="dpe" runat="server" DragHandleID="pHeader" TargetControlID="pnl">
    </ajaxToolkit:DragPanelExtender>
    <div id="dbase">
            <asp:Panel ID="pnl" runat="server">
            <table class="confirm_window">
            <tr><td>
            <asp:Panel ID="pHeader" runat="server" BackColor="#94D315" 
                    Font-Bold="True" ForeColor="White" 
                    Width="300px" Height="20px" BorderWidth="0px" CssClass="dragMe">
            <div class="title">-詳細</div><div class="close">
                <input type="image" src="./img/close.png" onclick="hiddenDetailsView(); return false;" /></div>
            </asp:Panel>
            </td></tr>
            <tr><td class="body">
            <asp:Panel ID="pContents" runat="server" Width="290px" 
                    BackColor="White" BorderWidth="0px">
                    現在の予約数：26人<br /> 現在の残席数：12席<br /> 説明会用座席確保残数：3席<br /> 
                    入学者用座席確保数：3席<br /> 
                    <br />
                    登録日：XX月XX日<br /> 追加予約入金日：XX月XX日<br /> <br />
                <div style="text-align:right;">
                    <input 
                        id="Button10" type="button" value="キャンセル登録" />
                    &nbsp;
                <input onclick="hiddenDetailsView();return false;" id="Button2" type="button" value="欠席登録" />
                </div>
            </asp:Panel>
            </td></tr>
            </table>
            </asp:Panel>
        </div>
        <ajaxToolkit:DragPanelExtender ID="DragPanelExtender1" runat="server" DragHandleID="student_detail_header" TargetControlID="student_detail">
    </ajaxToolkit:DragPanelExtender>
        <div id="dbase2">
            <asp:Panel ID="student_detail" runat="server">
            <table class="confirm_window">
            <tr><td>
            <asp:Panel ID="student_detail_header" runat="server" BackColor="#94D315" 
                    Font-Bold="True" ForeColor="White" 
                    Width="300px" Height="20px" BorderWidth="0px" CssClass="dragMe">
            <div class="title">-受講生情報</div><div class="close">
                <input type="image" src="./img/close.png" onclick="hiddenStudentDetail(); return false;" /></div>
            </asp:Panel>
            </td></tr>
            <tr><td class="body">
            <asp:Panel ID="Panel3" runat="server" Width="290px" 
                    BackColor="White" BorderWidth="0px">
                    お名前：XXX　XXX 様<br /> ふりがな：XXXX XXXX 様<br /> 性別：男性<br /> 生年月日：XXXX年XX月XX日<br /> 
                    <hr />
                    電話番号：XX-XXXX-XXXX<br /> 携帯電話番号：XXX-XXXX-XXXX<br />
                    <hr />
                    郵便番号：XXX-XXXX<br /> 住所：XXXXXXX-X-X XXXXXハイツ 401号室<br /> 
                    <hr />
                <div style="text-align:right;">
                <input id="Button8" type="button" onclick="hiddenStudentDetail();" value="閉じる" />
                    &nbsp;
                </div>
            </asp:Panel>
            </td></tr>
            </table>
            </asp:Panel>
        </div>
        <ajaxToolkit:DragPanelExtender ID="dpe3" runat="server" DragHandleID="panel2" TargetControlID="panel1">
    </ajaxToolkit:DragPanelExtender>
        <div id="dbase4">
            <asp:Panel ID="Panel1" runat="server">
            <table class="confirm_window">
            <tr><td>
            <asp:Panel ID="Panel2" runat="server" BackColor="#94D315" 
                    Font-Bold="True" ForeColor="White" 
                    Width="300px" Height="20px" BorderWidth="0px" CssClass="dragMe">
            <div class="title">-受講生検索</div><div class="close">
                <input type="image" src="./img/close.png" onclick="hiddenStudentDetail(); return false;" /></div>
            </asp:Panel>
            </td></tr>
            <tr><td class="body">
            <asp:Panel ID="Panel4" runat="server" Width="290px" 
                    BackColor="White" BorderWidth="0px">
                    ふりがな：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:Button ID="Button11" runat="server" Text="検索" />
                    <hr />
                    <asp:ListBox ID="ListBox1" runat="server" Width="99%"></asp:ListBox>
                    <br />
                <div style="text-align:right;">
                    <hr />
                <input id="Button1" type="button" onclick="hiddenStudentDetail();" value="選択" />
                </div>
            </asp:Panel>
            </td></tr>
            </table>
            </asp:Panel>
        </div>
        <ajaxToolkit:DragPanelExtender ID="DragPanelExtender2" runat="server" DragHandleID="history_log_header" TargetControlID="history_log">
    </ajaxToolkit:DragPanelExtender>
        <div id="dbase3">
            <asp:Panel ID="history_log" runat="server">
            <table class="confirm_window">
            <tr><td>
            <asp:Panel ID="history_log_header" runat="server" BackColor="#94D315" 
                    Font-Bold="True" ForeColor="White" 
                    Width="300px" Height="20px" BorderWidth="0px" CssClass="dragMe">
            <div class="title">-変更履歴</div><div class="close">
                <input type="image" src="./img/close.png" onclick="hiddenHistoryLog(); return false;" /></div>
            </asp:Panel>
            </td></tr>
            <tr><td class="body">
            <asp:Panel ID="history_log_body" runat="server" Width="290px" 
                    BackColor="White" BorderWidth="0px">
                <table style="width: 100%;">
                    <tr style="text-align:center; background-color:Gray; color:White; font-weight:bold;">
                        <td>
                            受信日</td>
                        <td>
                            変更対象日時</td>
                        <td>
                            ステータス</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp; 8月14日 18:21</td>
                        <td>
                            8月21日 14:00～</td>
                        <td>
                            キャンセル&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp; 8月14日 18:22</td>
                        <td>
                            8月24日 16：00～</td>
                        <td>
                            登録&nbsp;
                        </td>
                    </tr>
                </table>
                    <hr />
                <div style="text-align:right;">
                <input id="Button6" type="button" onclick="hiddenHistoryLog();" value="閉じる" />
                    &nbsp;
                </div>
            </asp:Panel>
            </td></tr>
            </table>
            </asp:Panel>
        </div>
    <table class="reservation">
        <tr class="header"><td></td><td>&nbsp;</td><td>10:00<br />│<br />10:50</td><td>11:00<br />│<br />11:50</td><td>12:00<br />│<br />12:50</td><td>
            お昼</td><td>14:00<br />│<br />14:50</td><td>15:00<br />│<br />15:50</td><td>16:00<br />│<br />16:50</td><td>
            休憩</td><td>18:30<br />│<br />19:20</td><td>19:30<br />│<br />20:20</td></tr>
        <tr><td class="date">1日</td><td class="date">（金）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            </tr>
        <tr><td class="date">2日</td><td class="date">（土）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" onclick="showDetailsView(event);return false;" src="./img/true.jpg" /></td><td class="g"></td><td>
            <input type="image" onclick="showDetailsView(event);return false;" src="./img/true.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="g date">3日</td><td class="g date">（日）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">4日</td><td class="date">（月）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">5日</td><td class="date">（火）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td>
            <td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            </tr>
        <tr><td class="date">6日</td><td class="date">（水）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            </tr>
        <tr><td class="date">7日</td><td class="date">（木）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr style="border:2px solid #000000; background-color:Orange;"><td class="date">8日</td><td class="date">（金）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            </tr>
        <tr><td class="date">9日</td><td class="date">（土）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" onclick="showDetailsView(event);return false;" src="./img/true.jpg" /></td><td class="g"></td><td>
            <input type="image" onclick="showDetailsView(event);return false;" src="./img/true.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td>
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
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            </tr>
        <tr><td class="date">13日</td><td class="date">（水）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td>
            <td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            </tr>
        <tr><td class="date">14日</td><td class="date">（木）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">15日</td><td class="date">（金）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g date"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            </tr>
        <tr><td class="date">16日</td><td class="date">（土）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" onclick="showDetailsView(event);return false;" src="./img/true.jpg" /></td><td class="g"></td><td>
            <input type="image" onclick="showDetailsView(event);return false;" src="./img/true.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g"></td>
            <td class="g date"></td><td class="g"></td></tr>
        <tr><td class="g date">17日</td><td class="g date">（日）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">18日</td><td class="date">（月）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">19日</td><td class="date">（火）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td>
            </tr>
        <tr><td class="date">20日</td><td class="date">（水）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td>
            <td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            </tr>
        <tr><td class="date">21日</td><td class="date">（木）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">22日</td><td class="date">（金）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            </tr>
        <tr><td class="date">23日</td><td class="date">（土）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" onclick="showDetailsView(event);return false;" src="./img/true.jpg" /></td><td class="g"></td><td>
            <input type="image" onclick="showDetailsView(event);return false;" src="./img/true.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="g date">24日</td><td class="g date">（日）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">25日</td><td class="date">（月）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">26日</td><td class="date">（火）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            </tr>
        <tr><td class="date">27日</td><td class="date">（水）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            </tr>
        <tr><td class="date">28日</td><td class="date">（木）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">29日</td><td class="date">（金）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g"></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            </tr>
        <tr><td class="date">30日</td><td class="date">（土）</td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/n_spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" onclick="showDetailsView(event);return false;" src="./img/true.jpg" /></td><td class="g"></td><td>
            <input type="image" onclick="showDetailsView(event);return false;" src="./img/true.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td><td>
            <input type="image" class="y_button" onclick="showDetailsView(event);return false;" src="./img/spacer.jpg" /></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="g date">31日</td><td class="g date">（日）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        </table>
    </div>
    <div id="right" class="heightLine">
    <div id="calender">
    <h1><asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" Font-Bold="True"><<</asp:LinkButton> 2010年 <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" Font-Bold="True">>></asp:LinkButton></h1>
    <p>12月</p>
    </div>
   
    <div id="tool_box">
    <h2><a href="#">説明会関連</a></h2>
    <ul>
        <li><a href="#">予約登録</a></li>
        <li><a href="#">予約者一覧</a></li>
        <li><a href="#">座席確保</a></li>
    </ul>
    <h2><a href="#">受講生管理</a></h2>
    <ul>
    <li><a href="#">受講生新規登録</a></li>
    <li><a href="#">受講生情報の照会</a></li>
    <li><a href="#">休学・退校・減耗登録</a></li>
    <li><a href="#">欠席登録</a></li>
    </ul>
    <h2><a href="#">予約管理</a></h2>
    <ul>
    <li><a href="#">残席総数の表示</a></li>
    <li><a href="#">予約総数の表示</a></li>
    <li><a href="#">教室予約一覧表</a></li>
    <li><a href="#">入金チェック表</a></li>
    </ul>
    </div>
    <div id="in_footer">
        <br />
        <br />
    - CCIPC SCHOOL -
    </div>
    </div>
    <div style="clear:both"></div>
    </div>
    </form>
</body>
</html>

