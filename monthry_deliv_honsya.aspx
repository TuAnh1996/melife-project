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
        <h2>月初テキスト発注数確認</h2>
            <table style="width:100%;">
                <tr>
                    <td style="width:50%">
                    <h1>検索</h1>
                        <table id="search">
                            <tr>
                                <td>
            教室の選択：<asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="京都教室"></asp:ListItem>
        </asp:DropDownList>
                                </td>
                                <td>
                                    月の選択：<asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem Value="12月"></asp:ListItem>
        </asp:DropDownList>
                                </td>
                                <td class="end">
                                    <input id="Button16" type="button" value="検索" /></td>
                            </tr>
                        </table>
                    </td>
                    <td style="width:50%;">
                    <h1>教材作成依頼書の出力</h1>
                        <table id="search">
                            <tr>
                                <td>
            手配書の選択：
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem Value="教材作成依頼書(Windows 7)"></asp:ListItem>
            </asp:DropDownList>
                                </td>
                                <td class="end">
                        <asp:Button ID="Button6" runat="server" Text="出力" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        <hr />
        <h1>手配依頼リスト</h1>
<table class="sim" style="width:100%; font-size:10px;">
                <tr class="head">
                    <td>
                        
                        カテゴリ</td>
                    <td>
                        
                        教材ID</td>
                    <td>
                        教材名</td>
                    <td>
                        前月在庫</td>
                    <td>
                        使用数</td>
                    <td>
                        在庫数量</td>
                    <td>
                        必要部数</td>
                    <td>
                        操作</td>
                </tr>
                <tr class="c">
                <td>
                    パソコン入門</td>
                <td>
                    10031-001</td>
                <td>
                    パソコン入門 WindowsXP編　1単元</td>
                <td>
                    45
                    冊</td>
                <td>
                    20
                    冊</td>
                <td>
                    25
                    冊</td>
                <td>
                    &nbsp;<asp:TextBox ID="TextBox7" runat="server" Width="40px">5</asp:TextBox>
                    &nbsp;冊</td>
                <td>
                    <asp:Button ID="Button13" runat="server" Text="変更" />
                    </td>
                </tr>
                <tr>
                <td>
                    パソコン入門</td>
                <td>
                    10031-002</td>
                <td>
                    パソコン入門 WindowsXP編　2単元</td>
                <td>
                    30
                    冊</td>
                <td>
                    &nbsp;18冊</td>
                <td>
                    12
                    冊</td>
                <td>
                    &nbsp;<asp:TextBox ID="TextBox8" runat="server" Width="40px">8</asp:TextBox>
                    &nbsp;冊</td>
                <td>
                    <asp:Button ID="Button14" runat="server" Text="変更" />
                    </td>
                </tr>
                <tr class="c">
                <td>
                    パソコン入門</td>
                <td>
                    10031-003</td>
                <td>
                    パソコン入門 WindowsXP編　3単元</td>
                <td>
                    25
                    冊</td>
                <td>
                    &nbsp;17冊</td>
                <td>
                    8
                    冊</td>
                <td>
                    &nbsp;<asp:TextBox ID="TextBox9" runat="server" Width="40px">12</asp:TextBox>
                    &nbsp;冊</td>
                <td>
                    <asp:Button ID="Button15" runat="server" Text="変更" />
                    </td>
                </tr>
            </table><br />
        <div class="button_area">
            &nbsp;</div>
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

