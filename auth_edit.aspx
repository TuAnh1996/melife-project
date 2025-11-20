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
            <h2>ユーザ情報の変更</h2>
        <table class="add_payment">
        <tr><td class="l_h">ユーザID</td><td class="r_h">
            <asp:TextBox ID="TextBox5" runat="server" Width="97%">meckt</asp:TextBox>
            </td><td class="l_h">ユーザ名(表示名)</td><td class="r_h">
            <asp:TextBox ID="TextBox11" runat="server" Width="97%">京都商工会議所パソコン教室</asp:TextBox>
                </td></tr><tr><td class="l_h">パスワード</td><td class="r" colspan="3">
            <asp:TextBox ID="TextBox10" runat="server" Width="50%" Height="19px" 
                    TextMode="Password"></asp:TextBox>
            </td></tr>
            
            <tr><td class="l_h">パスワード(再確認)</td><td class="r" colspan="3">
            <asp:TextBox ID="TextBox13" runat="server" Width="50%" Height="19px" 
                    TextMode="Password"></asp:TextBox>
            </td></tr>
            
        </table>
            <br />
        <asp:Button ID="Button15" runat="server" Text="このユーザを削除する" />
                <div class="button_area">
                    <asp:Button ID="Button2" runat="server" Text="変更" />
                    &nbsp;<asp:Button ID="Button3" runat="server" Text="クリア" />
                &nbsp;<asp:Button ID="Button14" runat="server" Text="戻る" />
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

