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
            <div class="title">ミライフ修正コード</div><div class="close">
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
            <h1>教材リスト</h1>
<table class="sim" style="width:100%; font-size:10px;">
                <tr class="head">
                    <td>
                        操作</td>
                    <td>
                        テキストID</td>
                    <td>
                        講座名</td>
                    <td>
                        表示名</td>
                    <td>
                        登録日</td>
                </tr>
                <tr class="c">
                <td>
                    &nbsp;<asp:Button ID="Button13" runat="server" Text="編集" />
&nbsp;<asp:Button ID="Button12" runat="server" Text="削除" />
                    </td>
                <td>
                    12457-02124</td>
                <td>
                    パソコン入門　WindowsXP編</td>
                <td>
                    パソコン入門 XP①</td>
                <td>2010年3月14日</td>
                </tr>
            </table>
        <br />
            <h1>教材の追加</h1>
        <table class="add_payment">
        <tr><td class="l_h">講座名</td><td class="r_h">
            <asp:DropDownList ID="DropDownList5" runat="server">
                <asp:ListItem Value="パソコン入門 WindowsXP編"></asp:ListItem>
            </asp:DropDownList>
            </td><td class="l_h">テキストID</td><td class="r_h">
            <asp:TextBox ID="TextBox11" runat="server" Width="98%"></asp:TextBox>
                </td></tr>
                        
        <tr><td class="l_h">表示名</td><td class="r_h" colspan="3">
            <asp:TextBox ID="TextBox12" runat="server" Width="99%"></asp:TextBox>
            </td></tr>
                        
        </table>
                <div class="button_area">
                    <asp:Button ID="Button2" runat="server" Text="登録" />
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

