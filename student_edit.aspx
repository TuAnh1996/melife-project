<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_edit.aspx.cs" Inherits="_Default" %>

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
            <h2>受講生情報の変更</h2>
            <h1>検索</h1>
        <table class="add_payment">
        <tr><td class="l">受講生ID</td><td>
            <asp:TextBox ID="TextBox16" runat="server" Width="30%"></asp:TextBox>
            <asp:Button ID="Button8" runat="server" Text="検索" />
&nbsp;<asp:Button ID="Button9" runat="server" Text="受講生検索" />
            </td></tr>
        </table>
            <hr />
            <h1>個人情報</h1>
        <table class="add_payment">
        <tr><td class="l_h">お名前(姓)</td><td class="r_h">
            <asp:TextBox ID="TextBox4" runat="server" Width="99%">岩崎</asp:TextBox>
            </td><td class="l_h">お名前(名)</td><td class="r_h">
            <asp:TextBox ID="TextBox6" runat="server" Width="99%">義憲</asp:TextBox>
            </td></tr>
        <tr><td class="l_h">ふりがな(姓)</td><td class="r_h">
            <asp:TextBox ID="TextBox5" runat="server" Width="99%">いわさき</asp:TextBox>
            </td><td class="l_h">ふりがな(名)</td><td class="r_h">
            <asp:TextBox ID="TextBox7" runat="server" Width="99%">よしのり</asp:TextBox>
            </td></tr>
        <tr><td class="l_h" colspan="1">郵便番号</td><td class="r" colspan="3">
            〒<asp:TextBox ID="TextBox8" runat="server">XXX-XXXX</asp:TextBox>
            </td></tr>
        <tr><td class="l_h" colspan="1">都道府県</td><td colspan="3">
            <asp:DropDownList ID="DropDownList5" runat="server" style="margin-bottom: 0px">
                <asp:ListItem Value="大阪府"></asp:ListItem>
            </asp:DropDownList>
            </td></tr>
        <tr><td class="l_h" colspan="1">住所1</td><td colspan="3">
            <asp:TextBox ID="TextBox9" runat="server" Width="99%">大阪市中央区本町3丁目1-6</asp:TextBox>
            </td></tr>
        <tr><td class="l_h" colspan="1">住所2</td><td colspan="3">
            <asp:TextBox ID="TextBox10" runat="server" Width="99%">羽町本町ビル 8階</asp:TextBox>
            </td></tr>
            <tr><td class="l_h">電話番号</td><td class="r_h">
                <asp:TextBox ID="TextBox11" runat="server" Width="99%">XX-XXXX-XXXX</asp:TextBox>
                </td><td class="l_h">携帯電話番号</td><td class="r_h">
                <asp:TextBox ID="TextBox12" runat="server" Width="99%">XX-XXXX-XXXX</asp:TextBox>
                </td></tr>
                <tr>
        <td class="l_h" colspan="1">性別</td><td>
                    <asp:RadioButton ID="RadioButton6" runat="server" Checked="True" Text="男性" />
                    <asp:RadioButton ID="RadioButton7" runat="server" Text="女性" />
                    </td>
        <td class="l_h" colspan="1">生年月日</td><td>
                    <asp:TextBox ID="TextBox14" runat="server" Width="99%">1986/11/14</asp:TextBox>
                    </td></tr>
                </table>
                <div class="button_area"><asp:Button ID="Button2" runat="server" Text="情報を変更する" /></div>
                <br />
        </div>
        <h1>受講情報</h1>
        <table class="add_payment">
            <tr><td class="l_h" colspan="1">受講生区分</td><td colspan="1">
                <asp:DropDownList ID="DropDownList6" runat="server">
                    <asp:ListItem Value="一般"></asp:ListItem>
                </asp:DropDownList>
                </td><td class="l_h">現在のステータス</td><td>受講中</td></tr>
                <tr><td class="l_h" colspan="1">現在の予約時間数</td><td colspan="1">
                    8 時間 / 10時間</td><td class="l_h">(前月の繰越時間)</td><td>2時間</td></tr>
            <tr><td class="l_h">OS情報</td><td class="r_h">
                <asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem Value="Windows 7"></asp:ListItem>
                </asp:DropDownList>
                </td><td class="l_h">現在受講中の講座</td><td class="r_h">
                はじめてのパソコン入門　Windows7編</td></tr>
                <tr><td class="l_h" colspan="1">次月分の入金</td><td colspan="3">
                9月6日に入金済み</td></tr>
                <tr><td class="l_h" colspan="1">メモ</td><td colspan="3">
                    <asp:TextBox ID="TextBox15" runat="server" Rows="1" 
                        Width="99%">そろそろ10単元に突入するので、そろそろ更新の案内をお願いします</asp:TextBox>
                    </td></tr>
        </table>
                            <div class="button_area">
                    <asp:Button ID="Button13" runat="server" Text="変更" />
                &nbsp;<asp:Button ID="Button14" runat="server" Text="クリア" />
                &nbsp;<asp:Button ID="Button15" runat="server" Text="戻る" />
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

