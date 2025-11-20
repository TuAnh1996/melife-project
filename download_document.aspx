<%@ Page Language="C#" AutoEventWireup="true" CodeFile="in_stock.aspx.cs" Inherits="_Default" %>

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
                    Width="330px" Height="20px" BorderWidth="0px" CssClass="dragMe">
            <div class="title">-テキストの選択</div><div class="close">
                <input type="image" src="./img/close.png" onclick="hiddenDetailsView(); return false;" /></div>
            </asp:Panel>
            </td></tr>
            <tr><td class="body">
            <asp:Panel ID="pContents" runat="server" Width="320px" 
                    BackColor="White" BorderWidth="0px">
                    <br /> 
                    <asp:ListBox ID="ListBox1" runat="server">
                        <asp:ListItem Value="パソコン入門講座"></asp:ListItem>
                        <asp:ListItem Value="趣味講座"></asp:ListItem>
                        <asp:ListItem Value="エクセル講座"></asp:ListItem>
                        <asp:ListItem Value="ワード講座"></asp:ListItem>
                        <asp:ListItem Value="オフィス上級講座"></asp:ListItem>
                    </asp:ListBox>
                    &nbsp;&gt;
                    <asp:ListBox ID="ListBox2" runat="server">
                        <asp:ListItem Value="ワード入門"></asp:ListItem>
                        <asp:ListItem Value="ワード基礎"></asp:ListItem>
                        <asp:ListItem Value="ワード応用"></asp:ListItem>
                    </asp:ListBox>
                    &nbsp;&gt;
                    <asp:ListBox ID="ListBox3" runat="server">
                        <asp:ListItem Value="2003 (XP)"></asp:ListItem>
                        <asp:ListItem Value="2007 (Vista)"></asp:ListItem>
                        <asp:ListItem Value="2010 (7)"></asp:ListItem>
                    </asp:ListBox>
                    <br />
                    <div class="button_area"><input id="Button1" type="button" value="選択" /></div>
            </asp:Panel>
            </td></tr>
            </table>
            </asp:Panel>
            <h2>報告資料の作成</h2>
        <h1>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="出席人数集計表" />
            </h1>
        <table class="add_payment">
        <tr><td class="l_h">作成日の選択</td><td class="r_h">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="XX年XX月"></asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem Value="XX日"></asp:ListItem>
            </asp:DropDownList>
            分</td>
            <td class="l_h">ダウンロード</td>
            <td class="r_h">
                <asp:Button ID="Button2" runat="server" Text=".xlsファイルをダウンロード" /></td>
            </tr>
                        
        </table><br />
         <h1>
             <asp:CheckBox ID="CheckBox2" runat="server" Text="活動報告" />
            </h1>
        <table class="add_payment">
        <tr><td class="l_h">作成日の選択</td><td class="r_h">
            <asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem Value="XX年XX月"></asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList5" runat="server">
                <asp:ListItem Value="XX日"></asp:ListItem>
            </asp:DropDownList>
            分</td>
            <td class="l_h">ダウンロード</td>
            <td class="r_h">
                <asp:Button ID="Button6" runat="server" Text=".xlsファイルをダウンロード" /></td>
            </tr>
                        
        </table>
        <br />
         <h1>
             <asp:CheckBox ID="CheckBox3" runat="server" Text="日計表" />
            </h1>
        <table class="add_payment">
        <tr><td class="l_h">作成日の選択</td><td class="r_h">
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="XX年XX月"></asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList6" runat="server">
                <asp:ListItem Value="XX日"></asp:ListItem>
            </asp:DropDownList>
            分</td>
            <td class="l_h">ダウンロード</td>
            <td class="r_h">
                <asp:Button ID="Button3" runat="server" Text=".xlsファイルをダウンロード" /></td>
            </tr>
                        
        </table>
        <br />
         <h1>
             <asp:CheckBox ID="CheckBox4" runat="server" Text="入金記録" />
            </h1>
        <table class="add_payment">
        <tr><td class="l_h">作成日の選択</td><td class="r_h">
            <asp:DropDownList ID="DropDownList7" runat="server">
                <asp:ListItem Value="XX年XX月"></asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList8" runat="server">
                <asp:ListItem Value="XX日"></asp:ListItem>
            </asp:DropDownList>
            分</td>
            <td class="l_h">ダウンロード</td>
            <td class="r_h">
                <asp:Button ID="Button4" runat="server" Text=".xlsファイルをダウンロード" /></td>
            </tr>
                        
        </table>
        <div class="button_area">
            <asp:Button ID="Button10" runat="server" Text="日次報告資料一括ダウンロード" />
&nbsp;<asp:Button ID="Button9" runat="server" Text="月次報告資料一括ダウンロード" />
&nbsp;<asp:Button ID="Button8" runat="server" Text="チェック分のダウンロード" />
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

