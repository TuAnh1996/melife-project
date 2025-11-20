<%@ Page Language="C#" AutoEventWireup="true" CodeFile="status.aspx.cs" Inherits="_Default" %>

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
        <h2>受信登録</h2>
        <table class="add_payment">
            <tr>
                <td class="l_h_h">受信日</td>
                <td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
                <td class="r_h">
                日付：<asp:TextBox ID="TextBox14" runat="server" Width="90px" 
                    ForeColor="#CCCCCC">例) 2010/11/14</asp:TextBox>
                　時間：<asp:TextBox ID="TextBox20" runat="server" Width="80px" ForeColor="#CCCCCC">例) 1004</asp:TextBox>
            </td>
            <td class="l_h_h">
      問い合わせ手段</td>
            <td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
                <td class="r_h">
                                <asp:RadioButton ID="RadioButton7" runat="server" Text="電話" />
                                <asp:RadioButton ID="RadioButton6" runat="server" Text="直来" />
            </td>
                            </tr>
        <tr>
        <td class="l_h_h">ふりがな(性)</td><td class="h_h_h">&nbsp;</td><td class="r_h">
            <asp:TextBox ID="TextBox9" runat="server" Width="97%"></asp:TextBox>
            </td>
            <td class="l_h_h">ふりがな(名)</td>
            <td class="h_h_h"></td><td>
            <asp:TextBox ID="TextBox21" runat="server" Width="97%"></asp:TextBox>
            </td>
        </tr>
        <tr><td class="l_h_h">電話番号</td><td class="h_h_h">&nbsp;</td><td class="r_h">
            <asp:TextBox ID="TextBox11" runat="server" Width="97%"></asp:TextBox>
            </td>
        <td class="l_h_h">性別</td>
        <td class="h_h_h">&nbsp;</td>
        <td class="r_h">
            <asp:RadioButton ID="RadioButton4" runat="server" Text="男性" />
            <asp:RadioButton ID="RadioButton5" runat="server" Text="女性" />
                                </td>
        </tr>
                            <tr>
                                <td class="l_h_h">パソコン経験</td>
                                <td class="h_h_h">&nbsp;</td><td class="r_h">
                                <asp:RadioButton ID="RadioButton14" runat="server" Text="あり" />
                                <asp:RadioButton ID="RadioButton15" runat="server" Text="なし" />
                </td><td class="l_h_h">来校手段</td><td class="h_h_h">&nbsp;</td><td class="r_h">
                                <asp:DropDownList ID="DropDownList20" runat="server">
                                    <asp:ListItem Value="電車"></asp:ListItem>
                                </asp:DropDownList>
                </td>
                        </tr>
            <tr>
                <td class="l_h_h">担当</td>
                <td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
                <td class="r_h">
                <asp:DropDownList ID="DropDownList18" runat="server">
                    <asp:ListItem Value="山田"></asp:ListItem>
                </asp:DropDownList>
                </td><td class="l_h_h">問い合わせ種別</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
                <td class="r_h">
            <asp:RadioButton ID="RadioButton16" runat="server" Text="体験会申し込み" />
            <asp:RadioButton ID="RadioButton17" runat="server" Text="問い合わせ" />
                </td>
                            </tr>
                            <tr>
                                <td class="l_h_h">説明会希望日時</td>
                                <td class="h_h_h">&nbsp;</td><td colspan="4">
                                日付：<asp:TextBox ID="TextBox22" runat="server" Width="90px" 
                    ForeColor="#CCCCCC">例) 2010/11/14</asp:TextBox>
                                　時間：<asp:DropDownList ID="DropDownList21" runat="server">
                    <asp:ListItem Value="☆13:00～"></asp:ListItem>
                </asp:DropDownList>
            </td>
            </tr>
                            <tr>
                                <td class="l_h_h">希望講座</td>
                                <td class="h_h_h">&nbsp;</td><td colspan="4">
                <asp:DropDownList ID="DropDownList16" runat="server" Width="250px">
                    <asp:ListItem Value="パソコン入門"></asp:ListItem>
                </asp:DropDownList>
                                　　　その他の場合：<asp:TextBox ID="TextBox18" runat="server" Width="200px"></asp:TextBox>
            </td>
            </tr>
            <tr>
                <td class="l_h_h">媒体</td>
                <td class="h_h_h">&nbsp;</td><td colspan="4">
                <asp:DropDownList ID="DropDownList10" runat="server" Width="250px">
                    <asp:ListItem Value="読売新聞の折り込みチラシを見て"></asp:ListItem>
                </asp:DropDownList>
                　　　その他の場合：<asp:TextBox ID="TextBox19" runat="server" Width="200px"></asp:TextBox>
                </td>
                            </tr>
                            </table>
        <div class="button_area">
        <asp:Button ID="Button6" runat="server" Text="登録" />
            &nbsp;<asp:Button ID="Button8" runat="server" Text="クリア" />
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

