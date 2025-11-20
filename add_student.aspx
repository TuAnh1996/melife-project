<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_student.aspx.cs" Inherits="_Default" %>

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
            <h2>受講生新規登録</h2>
            <hr />
        <h1>個人情報</h1>
        <table class="add_payment">
        <tr><td class="l_h_h">お名前(姓)</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td class="r_h">
            <asp:TextBox ID="TextBox9" runat="server" Width="97%"></asp:TextBox>
            </td><td class="l_h_h">お名前(名)</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td class="r_h">
            <asp:TextBox ID="TextBox10" runat="server" Width="97%"></asp:TextBox>
            </td></tr>
        <tr><td class="l_h_h">ふりがな(姓)</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td class="r_h">
            <asp:TextBox ID="TextBox11" runat="server" Width="97%"></asp:TextBox>
            </td><td class="l_h_h">ふりがな(名)</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td class="r_h">
            <asp:TextBox ID="TextBox12" runat="server" style="margin-bottom: 0px" 
                Width="97%"></asp:TextBox>
            </td></tr>
        <tr><td class="l_h_h" colspan="1">郵便番号</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
            <td class="r" colspan="4">
            〒<asp:TextBox ID="TextBox3" runat="server" Width="100px"></asp:TextBox>
            <asp:Button ID="Button8" runat="server" Text="住所検索" />
            </td></tr>
        <tr><td class="l_h_h" colspan="1">都道府県</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
            <td colspan="4">
            <asp:DropDownList ID="DropDownList6" runat="server">
                <asp:ListItem Value="大阪府"></asp:ListItem>
            </asp:DropDownList>
            </td></tr>
        <tr><td class="l_h_h" colspan="1">住所1</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
            <td colspan="4">
            <asp:TextBox ID="TextBox8" runat="server" Width="70%"></asp:TextBox>
            </td></tr>
        <tr><td class="l_h_h" colspan="1">住所2</td><td class="h_h_h">&nbsp;</td><td colspan="4">
            <asp:TextBox ID="TextBox7" runat="server" Width="70%"></asp:TextBox>
            </td></tr>
            <tr><td class="l_h_h">電話番号</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td class="r_h">
                <asp:TextBox ID="TextBox5" runat="server" Width="97%"></asp:TextBox>
                </td><td class="l_h_h">携帯電話番号</td><td class="h_h_h">&nbsp;</td><td class="r_h">
                <asp:TextBox ID="TextBox6" runat="server" Width="97%"></asp:TextBox>
                </td></tr>
        <tr><td class="l_h_h" colspan="1">性別</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
            <td colspan="4">
            <asp:RadioButton ID="RadioButton4" runat="server" Text="男性" 
                GroupName="gender" />
            <asp:RadioButton ID="RadioButton5" runat="server" Text="女性" 
                GroupName="gender" />
            </td></tr>
        <tr><td class="l_h_h" colspan="1">生年月日</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
            <td colspan="4">
            <asp:RadioButton ID="RadioButton8" runat="server" GroupName="birthday" />
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="1986"></asp:ListItem>
            </asp:DropDownList>
            年<asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem Value="11"></asp:ListItem>
            </asp:DropDownList>
            月<asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem Value="14"></asp:ListItem>
            </asp:DropDownList>
            日　　<asp:RadioButton ID="RadioButton9" runat="server" GroupName="birthday" 
                Text="不明" />
            </td></tr>
            <tr><td class="l_h_h">受信日</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td class="r_h">
                <asp:TextBox ID="TextBox14" runat="server" Width="97%"></asp:TextBox>
                </td><td class="l_h_h">担当者</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td class="r_h">
                <asp:DropDownList ID="DropDownList12" runat="server">
                    <asp:ListItem Value="佐々木"></asp:ListItem>
                </asp:DropDownList>
                </td></tr>
            <tr><td class="l_h_h" colspan="1">受講生区分</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td class="r_h">
                <asp:RadioButton ID="RadioButton6" runat="server" Text="一般" 
                    GroupName="person" />
                <asp:RadioButton ID="RadioButton7" runat="server" Text="商工会会員" 
                    GroupName="person" />
                <asp:RadioButton ID="RadioButton10" runat="server" Text="短期" 
                    GroupName="person" />
                </td>
                <td class="l_h_h">商工会会員企業名</td>
                <td class="h_h_h">&nbsp;</td>
                <td class="r_h">
                    <asp:TextBox ID="TextBox1" runat="server" Width="97%"></asp:TextBox></td>
                </tr>
                <tr><td class="l_h_h" colspan="1">初回予定日</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
                    <td colspan="4">
                    <asp:DropDownList ID="DropDownList7" runat="server">
                        <asp:ListItem Value="2010"></asp:ListItem>
                    </asp:DropDownList>
                    年<asp:DropDownList ID="DropDownList8" runat="server">
                        <asp:ListItem Value="12"></asp:ListItem>
                    </asp:DropDownList>
                    月<asp:DropDownList ID="DropDownList9" runat="server">
                        <asp:ListItem Value="15"></asp:ListItem>
                    </asp:DropDownList>
                    日</td></tr>
            <tr><td class="l_h_h">OS</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td class="r_h">
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem Value="Windows7"></asp:ListItem>
                </asp:DropDownList>
                </td><td class="l_h_h">受講希望講座</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td class="r_h">
                <asp:DropDownList ID="DropDownList11" runat="server">
                    <asp:ListItem Value="初めてのパソコン入門 Windows7編"></asp:ListItem>
                </asp:DropDownList>
                </td></tr>
                <tr>
                    <td class="l_h_h" colspan="1">アンケート</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
                    <td colspan="4">
                <asp:DropDownList ID="DropDownList13" runat="server">
                    <asp:ListItem Value="読売新聞の折り込みチラシを見て"></asp:ListItem>
                </asp:DropDownList>
                        　　　その他の場合：<asp:TextBox ID="TextBox15" runat="server" Width="250px"></asp:TextBox>
                    </td>
            </tr>
        </table>
        <div class="button_area">
        <asp:Button ID="Button6" runat="server" Text="登録" />
            　<asp:Button ID="Button7" runat="server" Text="キャンセル" />
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

