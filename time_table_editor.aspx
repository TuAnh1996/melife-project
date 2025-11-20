<%@ Page Language="C#" AutoEventWireup="true" CodeFile="school_settings.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="./css/sub_StyleSheet.css" rel="stylesheet" type="text/css" />
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

        function showDetailsView(event) {
            $get('pnl').style.visibility = 'visible';
            $get('pnl').style.left = Event.pointerX(event) + 10;
            $get('pnl').style.top = Event.pointerY(event) + 10;
        }

        function pageLoad() {
            hiddenDetailsView();
        }
    </script>
    <style type="text/css">
        .style1
        {
            height: 25px;
        }
    </style>
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
    <ajaxToolkit:DragPanelExtender ID="dpe" runat="server" DragHandleID="pHeader" TargetControlID="pnl">
    </ajaxToolkit:DragPanelExtender>
    <div id="dbase">
            <asp:Panel ID="pnl" runat="server">
            <table class="confirm_window">
            <tr><td>
            <asp:Panel ID="pHeader" runat="server" BackColor="#94D315" 
                    Font-Bold="True" ForeColor="White" 
                    Width="300px" Height="20px" BorderWidth="0px" CssClass="dragMe">
            <div class="title">-報告資料の作成</div><div class="close">
                <input type="image" src="./img/close.png" onclick="hiddenDetailsView(); return false;" /></div>
            </asp:Panel>
            </td></tr>
            <tr><td class="body">
            <asp:Panel ID="pContents" runat="server" Width="290px" 
                    BackColor="White" BorderWidth="0px">
                    
                <div style="padding:10px;">
                    <asp:RadioButton ID="RadioButton4" runat="server" Text="日計表のエクスポート" />
                    <br />
                    <input id="Text1" type="text" />
                    <input id="Button1" type="button" value="ダウンロード" />
                    <br />
                    <br />
                    <asp:RadioButton ID="RadioButton5" runat="server" Text="入金記録表のエクスポート" />
                    <br />
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem Value="2010"></asp:ListItem>
                    </asp:DropDownList>
                    年<asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem Value="12"></asp:ListItem>
                    </asp:DropDownList>
                    月分　<asp:Button ID="Button11" runat="server" Text="ダウンロード" />
                </div>
            </asp:Panel>
            </td></tr>
            </table>
            </asp:Panel>
            <h2>タイムテーブルエディタ</h2>
            <h1>プレビュー</h1>
            <table class="reservation">
        <tr class="header"><td></td><td>&nbsp;</td><td>10:00<br />│<br />10:50</td><td>11:00<br />│<br />11:50</td><td>12:00<br />│<br />12:50</td><td>
            お昼</td><td>14:00<br />│<br />14:50</td><td>15:00<br />│<br />15:50</td><td>16:00<br />│<br />16:50</td><td>
            休憩</td><td>18:30<br />│<br />19:20</td><td>19:30<br />│<br />20:20</td></tr>
        <tr><td class="g date">24日</td><td class="g date">（日）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">25日</td><td class="date">（月）</td><td>
            &nbsp;</td><td>
                &nbsp;</td><td>
                &nbsp;</td><td class="g"></td><td>
            &nbsp;</td><td>
                &nbsp;</td><td>
                &nbsp;</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">26日</td><td class="date">（火）</td><td>
            &nbsp;</td><td>
                &nbsp;</td><td>
                &nbsp;</td><td class="g"></td><td>
            &nbsp;</td><td>
                &nbsp;</td><td>
                &nbsp;</td>
            <td class="g"></td><td>
            &nbsp;</td><td>
                &nbsp;</td>
            </tr>
        <tr><td class="date">27日</td><td class="date">（水）</td><td>
            &nbsp;</td><td>
                &nbsp;</td><td>
                &nbsp;</td><td class="g"></td><td>
            &nbsp;</td><td>
                &nbsp;</td><td>
                &nbsp;</td>
            <td class="g"></td><td>
            </td><td>
                &nbsp;</td>
            </tr>
        <tr><td class="date">8日</td><td class="date">（木）</td><td>
            &nbsp;</td><td>
                &nbsp;</td><td>
                &nbsp;</td><td class="g"></td><td>
            &nbsp;</td><td>
                &nbsp;</td><td>
                &nbsp;</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">29日</td><td class="date">（金）</td><td>
            &nbsp;</td><td>
                &nbsp;</td><td>
                &nbsp;</td><td class="g"></td><td>
            &nbsp;</td><td>
                &nbsp;</td><td>
                &nbsp;</td>
            <td class="g"></td><td>
            &nbsp;</td><td>
                &nbsp;</td>
            </tr>
        <tr><td class="date">30日</td><td class="date">（土）</td><td>
            &nbsp;</td><td>
                &nbsp;</td><td>
                &nbsp;</td><td class="g"></td><td>
            &nbsp;</td><td>
                &nbsp;</td><td>
                &nbsp;</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        </table>
                <br />
        <table style="width:100%;">
        <tr><td style="width:50%;">
        <h1>コマの追加</h1>
        <table class="add_payment">
                <tr><td class="l_h" colspan="1">開始時間</td><td class="r_h" colspan="1">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="9"></asp:ListItem>
                </asp:DropDownList>
                    時<asp:DropDownList ID="DropDownList9" runat="server">
                    <asp:ListItem Value="30"></asp:ListItem>
                </asp:DropDownList>
                    分</td><td class="l_h">終了時間</td><td>
                <asp:DropDownList ID="DropDownList10" runat="server">
                    <asp:ListItem Value="10"></asp:ListItem>
                </asp:DropDownList>
                    時<asp:DropDownList ID="DropDownList11" runat="server">
                    <asp:ListItem Value="30"></asp:ListItem>
                </asp:DropDownList>
                    分</td></tr>
                </table>
                <div class="button_area">
                    <asp:Button ID="Button3" runat="server" Text="コマを追加する" /></div>

            </td><td style="width:50%;">
        <h1>コマの削除</h1>
        <table class="add_payment">
                <tr><td class="l_h" colspan="1">開始時間を選択</td><td class="r_h" colspan="1">
                <asp:DropDownList ID="DropDownList22" runat="server">
                    <asp:ListItem Value="9"></asp:ListItem>
                </asp:DropDownList>
                    時<asp:DropDownList ID="DropDownList23" runat="server">
                    <asp:ListItem Value="30"></asp:ListItem>
                </asp:DropDownList>
                    分～</td></tr>
                </table>
                <div class="button_area"><asp:Button ID="Button2" runat="server" 
                        Text="選択したコマを削除する" /></div>

            </td></tr>
        </table>
        <br />
                <table style="width:100%;">
        <tr><td style="width:50%;">
        <h1>休み時間を追加する</h1>
        <table class="add_payment">
            <tr><td class="l_h" colspan="1">コマを選択</td><td class="r_h" colspan="1" 
                    style="height: 25px">
                <asp:DropDownList ID="DropDownList24" runat="server">
                    <asp:ListItem Value="9:30～">9:30～</asp:ListItem>
                </asp:DropDownList>
                </td><td class="l_h" style="height: 25px">表示名</td><td class="style1">
                    <asp:TextBox ID="TextBox4" runat="server" Width="98%"></asp:TextBox>
                </td></tr>
                </table>
                <div class="button_area">
                    <asp:Button ID="Button4" runat="server" Text="休み時間を追加する" /></div>

            </td><td style="width:50%;">
        <h1>休み時間を削除する</h1>
        <table class="add_payment">
                <tr><td class="l_h" colspan="1">休み時間の名前を選択</td><td class="r_h" colspan="1">
                <asp:DropDownList ID="DropDownList25" runat="server">
                    <asp:ListItem Value="お昼"></asp:ListItem>
                </asp:DropDownList>
                    </td></tr>
                </table>
                <div class="button_area">
                    <asp:Button ID="Button5" runat="server" 
                        Text="選択した休み時間を削除する" /></div>

            </td></tr>
        </table>
        <br />
                        <table style="width:100%;">
        <tr><td style="width:50%;">
        <h1>毎週の休みを設定する</h1>
        <table class="add_payment">
            <tr>
                <td class="l_h">休日に設定する曜日</td><td class="r_h">
                <asp:CheckBox ID="CheckBox8" runat="server" Text="月" />
&nbsp;<asp:CheckBox ID="CheckBox9" runat="server" Text="火" />
&nbsp;<asp:CheckBox ID="CheckBox10" runat="server" Text="水" />
&nbsp;<asp:CheckBox ID="CheckBox11" runat="server" Text="木" />
&nbsp;<asp:CheckBox ID="CheckBox12" runat="server" Text="金" />
&nbsp;<asp:CheckBox ID="CheckBox13" runat="server" Text="土" />
&nbsp;<asp:CheckBox ID="CheckBox14" runat="server" Text="日" />
                </td>
            </tr>
                </table>
                <div class="button_area">
                    <asp:Button ID="Button6" runat="server" Text="休日の設定を反映する" /></div>

            </td><td style="width:50%;">
        <h1>授業を行わない時間を設定する</h1>
        <table class="add_payment">
            <tr><td class="l" style="height: 25px">曜日と時間を選択</td><td class="r">
                <asp:DropDownList ID="DropDownList26" runat="server" Height="16px">
                    <asp:ListItem Value="月曜日"></asp:ListItem>
                    <asp:ListItem Value="火曜日"></asp:ListItem>
                    <asp:ListItem Value="水曜日"></asp:ListItem>
                    <asp:ListItem Value="木曜日"></asp:ListItem>
                    <asp:ListItem Value="金曜日"></asp:ListItem>
                    <asp:ListItem Value="土曜日"></asp:ListItem>
                    <asp:ListItem Value="日曜日"></asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList27" runat="server">
                    <asp:ListItem Value="9:30～">9:30～</asp:ListItem>
                </asp:DropDownList>
                </td></tr>
                </table>
                <div class="button_area">
                    <asp:Button ID="Button7" runat="server" 
                        Text="選択したコマをグレー表示する" /></div>

            </td></tr>
        </table>
        <hr />
                <div class="button_area">
        <asp:Button ID="Button20" runat="server" Text="設定した内容を保存する" />
            &nbsp;<asp:Button ID="Button21" runat="server" Text="クリア" />
            &nbsp;<asp:Button ID="Button22" runat="server" Text="戻る" />
            </div>
                <br />
        </div>
    </div>
    <div id="right" class="heightLine">
   　ツールボックス
    </div>
    <div style="clear:both"></div>
    </div>
    </form>
</body>
</html>

