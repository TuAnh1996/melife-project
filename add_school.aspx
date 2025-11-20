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
    <style type="text/css">
        #Button9
        {
            margin-bottom: 0px;
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
        <h2>教室新規登録</h2>
        <table class="add_payment">
        <tr><td class="l_h_h">教室ID</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td class="r_h">
            <asp:TextBox ID="TextBox9" runat="server" Width="95%"></asp:TextBox>
            </td><td class="l_h">教室名</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td class="r_h">
            <asp:TextBox ID="TextBox10" runat="server" Width="95%"></asp:TextBox>
            </td></tr>
        <tr><td class="l_h_h">所属商工会議所</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td class="r_h">
            <asp:TextBox ID="TextBox11" runat="server" Width="95%"></asp:TextBox>
            </td><td class="l_h">最大予約席数</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td class="r_h">
            <asp:TextBox ID="TextBox12" runat="server" style="margin-bottom: 0px" 
                Width="60px"></asp:TextBox>
            人</td></tr>
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
        <tr><td class="l_h_h" colspan="1">住所2</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
            <td colspan="4">
            <asp:TextBox ID="TextBox7" runat="server" Width="70%"></asp:TextBox>
            </td></tr>
            <tr><td class="l_h_h">電話番号</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td class="r_h">
                <asp:TextBox ID="TextBox5" runat="server" Width="95%"></asp:TextBox>
                </td><td class="l_h">FAX番号</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td><td class="r_h">
                <asp:TextBox ID="TextBox6" runat="server" Width="95%"></asp:TextBox>
                </td></tr>
        <tr><td class="l_h_h" colspan="1">日計表の提出</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
            <td colspan="4">
            <asp:RadioButton ID="RadioButton4" runat="server" Text="あり" 
                GroupName="gender" />
            <asp:RadioButton ID="RadioButton5" runat="server" Text="なし" 
                GroupName="gender" />
            </td></tr>
            <tr><td class="l_h_h">パスワード</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
                <td class="r" colspan="4">
                <asp:TextBox ID="TextBox14" runat="server" Width="50%"></asp:TextBox>
                </td></tr>
            <tr><td class="l_h_h">パスワード(確認用)</td><td class="h_h"><p style="text-align:center; background-color:White; color:Red;margin:0;padding:0;font-size:8px;border:1px solid Red">必須</p></td>
                <td class="r" colspan="4">
                <asp:TextBox ID="TextBox16" runat="server" Width="50%"></asp:TextBox>
                </td></tr>
            </table>
        <div class="button_area">
        <asp:Button ID="Button6" runat="server" Text="登録" />
            &nbsp;<input id="Button9" type="button" value="クリア" /> <asp:Button ID="Button7" 
                runat="server" Text="戻る" />
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

