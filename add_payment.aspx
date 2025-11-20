<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_payment.aspx.cs" Inherits="_Default" %>

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
            <div class="title">-詳細</div><div class="close">
                <input type="image" src="./img/close.png" onclick="hiddenDetailsView(); return false;" /></div>
            </asp:Panel>
            </td></tr>
            <tr><td class="body">
            <asp:Panel ID="pContents" runat="server" Width="290px" 
                    BackColor="White" BorderWidth="0px">
                    現在の予約数：26人<br /> 現在の残席数：12席<br /> 説明会用座席確保残数：3席<br /> 
                    <br />
                    予約取得時間数： 
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem Value="2"></asp:ListItem>
                        <asp:ListItem Value="3"></asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        <asp:ListItem Value="9"></asp:ListItem>
                        <asp:ListItem Value="10"></asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;時間<br /> 
                    <br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="毎週のこの曜日に予約を登録する" />
                    <br />
                    　<br /> 以上の内容で登録します。よろしいですか？<br /> <br />
                <div style="text-align:right;">
                <input id="Button1" type="button" value="反映" />
                <input onclick="hiddenDetailsView();return false;" id="Button2" type="button" value="キャンセル" />
                </div>
            </asp:Panel>
            </td></tr>
            </table>
            </asp:Panel>
            <h2>入金登録</h2>
        <table class="add_payment">
            <tr>
                <td class="l_h_h">入金区分</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td>
            <asp:DropDownList ID="DropDownList5" runat="server">
                <asp:ListItem Value="更新"></asp:ListItem>
                <asp:ListItem Value="追加"></asp:ListItem>
                <asp:ListItem Value="返金"></asp:ListItem>
                <asp:ListItem Value="新規"></asp:ListItem>
                <asp:ListItem Value="破棄"></asp:ListItem>
                <asp:ListItem Value="教材"></asp:ListItem>
            </asp:DropDownList>
                </td>
            <td class="l_h_h">更新月(更新の場合)</td>
            <td class="h_h_h"></td><td class="r_h">
            <asp:DropDownList ID="DropDownList6" runat="server">
                <asp:ListItem Value="09">09</asp:ListItem>
                <asp:ListItem Value="10"></asp:ListItem>
                <asp:ListItem Value="11"></asp:ListItem>
            </asp:DropDownList>
            年　<asp:DropDownList ID="DropDownList7" runat="server">
                <asp:ListItem Value="1"></asp:ListItem>
                <asp:ListItem Value="2"></asp:ListItem>
                <asp:ListItem Value="3"></asp:ListItem>
                <asp:ListItem Value="4"></asp:ListItem>
                <asp:ListItem Value="5"></asp:ListItem>
                <asp:ListItem Value="6"></asp:ListItem>
                <asp:ListItem Value="7"></asp:ListItem>
                <asp:ListItem Value="8"></asp:ListItem>
                <asp:ListItem Value="9"></asp:ListItem>
                <asp:ListItem Value="10"></asp:ListItem>
                <asp:ListItem Value="11"></asp:ListItem>
                <asp:ListItem Value="12"></asp:ListItem>
            </asp:DropDownList>
            月更新分</td>
            </tr>
        <tr><td class="l_h_h">入金日</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
            <td colspan="4">
            <asp:TextBox ID="TextBox3" runat="server" Width="30%"></asp:TextBox>
            </td></tr>
        <tr><td class="l_h_h">受講生ID</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
            <td colspan="4">
            <asp:TextBox ID="TextBox4" runat="server" Width="30%"></asp:TextBox>
            <asp:Button ID="Button8" runat="server" Text="検索" />
&nbsp;<asp:Button ID="Button9" runat="server" Text="受講生検索" />
            </td></tr>
        <tr><td class="l_h_h">受講生名</td><td class="h_h_h">&nbsp;</td><td colspan="4">
            -
            受講生名がここに表示されます
            </td></tr>
            <tr><td class="l_h_h">会社名</td><td class="h_h_h">&nbsp;</td><td colspan="4">
                -
                会社名がここに表示されます</td></tr>
        <tr><td class="l_h_h">領収書番号</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
            <td colspan="4">
            <asp:TextBox ID="TextBox6" runat="server" Width="50%"></asp:TextBox>
            </td></tr>
        <tr><td class="l_h_h">受講生区分</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
            <td colspan="4">
            <asp:RadioButton ID="RadioButton4" runat="server" Text="一般" GroupName="type" />
            　<asp:RadioButton ID="RadioButton5" runat="server" Text="商工会会員" 
                GroupName="type" />
                　<asp:RadioButton ID="RadioButton6" runat="server" Text="短期" 
                GroupName="type" />
            </td></tr>
        <tr><td class="l_h_h">予約時間数</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td>
            <asp:TextBox ID="TextBox8" runat="server" Width="50px"></asp:TextBox>
            時間分</td>
            <td class="l_h_h">入金オプション</td>
            <td class="h_h_h"></td><td class="r_h">
            <asp:CheckBox ID="CheckBox2" runat="server" Text="教室維持費を含まない" />
            <asp:CheckBox ID="CheckBox3" runat="server" Text="機器使用料を含まない" />
            </td></tr>
        <tr><td class="l_h_h">入金額</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
            <td colspan="4">
            <asp:TextBox ID="TextBox7" runat="server" Width="30%"></asp:TextBox>
            円</td></tr>
            <tr><td class="l_h_h">備考欄</td><td class="h_h_h">&nbsp;</td><td colspan="4">
            <asp:TextBox ID="TextBox5" runat="server" Width="99%"></asp:TextBox>
            </td></tr>
        </table>
        <div class="button_area">
        <asp:Button ID="Button6" runat="server" Text="登録" />
            &nbsp;<asp:Button ID="Button10" runat="server" Text="クリア" />
            &nbsp;<asp:Button ID="Button7" runat="server" Text="戻る" />
        </div>
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

