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
        <h2>月初テキスト発注 納品履歴</h2>
        <h1>検索</h1>
            <table id="search">
                <tr>
                    <td>
                        カテゴリの選択：<asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="パソコン入門"></asp:ListItem>
        </asp:DropDownList>
                    </td>
                    <td class="end">
                        <input id="Button3" type="button" value="検索" /></td>
                </tr>
            </table>
        <hr />
        <h1>発注履歴</h1>
        <asp:TabContainer id="tabs" runat="server">
        <asp:TabPanel runat="server" ID="t1">
        <HeaderTemplate>12月</HeaderTemplate>
        <ContentTemplate>
        <table class="sim" style="width:100%; font-size:10px;">
                <tr class="head">
                    <td>
                        
                        カテゴリ</td>
                    <td>
                        
                        教材ID</td>
                    <td>
                        教材名</td>
                    <td>
                        納品数</td>
                    <td>
                        データ登録日</td>
                </tr>
                <tr class="c">
                <td>
                    パソコン入門</td>
                <td>
                    10031-001</td>
                <td>
                    パソコン入門 Windows7編　1単元</td>
                <td>
                    X
                    冊</td>
                <td>
                    12月13日</td>
                </tr>
                <tr>
                <td>
                    パソコン入門</td>
                <td>
                    10031-002</td>
                <td>
                    パソコン入門 Windows7編　2単元</td>
                <td>
                    X 冊</td>
                <td>
                    12月13日</td>
                </tr>
                <tr class="c">
                <td>
                    パソコン入門</td>
                <td>
                    10031-003</td>
                <td>
                    パソコン入門 Windows7編　3単元</td>
                <td>
                    X
                    冊</td>
                <td>
                    12月13日</td>
                </tr>
            </table>
        </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel runat="server" ID="TabPanel1">
        <HeaderTemplate>11月</HeaderTemplate>
        <ContentTemplate>
        <table class="sim" style="width:100%; font-size:10px;">
                <tr class="head">
                    <td>
                        
                        カテゴリ</td>
                    <td>
                        
                        教材ID</td>
                    <td>
                        教材名</td>
                    <td>
                        納品数</td>
                    <td>
                        データ登録日</td>
                </tr>
                <tr class="c">
                <td>
                    パソコン入門</td>
                <td>
                    10031-001</td>
                <td>
                    パソコン入門1単元</td>
                <td>
                    X
                    冊</td>
                <td>
                    12月13日</td>
                </tr>
                <tr>
                <td>
                    パソコン入門</td>
                <td>
                    10031-002</td>
                <td>
                    パソコン入門2単元</td>
                <td>
                    X 冊</td>
                <td>
                    12月13日</td>
                </tr>
                <tr class="c">
                <td>
                    パソコン入門</td>
                <td>
                    10031-003</td>
                <td>
                    パソコン入門3単元</td>
                <td>
                    X
                    冊</td>
                <td>
                    12月13日</td>
                </tr>
            </table>
        </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel runat="server" ID="TabPanel2">
        <HeaderTemplate>10月</HeaderTemplate>
        <ContentTemplate>
        <table class="sim" style="width:100%; font-size:10px;">
                <tr class="head">
                    <td>
                        
                        カテゴリ</td>
                    <td>
                        
                        教材ID</td>
                    <td>
                        教材名</td>
                    <td>
                        納品数</td>
                    <td>
                        データ登録日</td>
                </tr>
                <tr class="c">
                <td>
                    パソコン入門</td>
                <td>
                    10031-001</td>
                <td>
                    パソコン入門1単元</td>
                <td>
                    X
                    冊</td>
                <td>
                    12月13日</td>
                </tr>
                <tr>
                <td>
                    パソコン入門</td>
                <td>
                    10031-002</td>
                <td>
                    パソコン入門2単元</td>
                <td>
                    X 冊</td>
                <td>
                    12月13日</td>
                </tr>
                <tr class="c">
                <td>
                    パソコン入門</td>
                <td>
                    10031-003</td>
                <td>
                    パソコン入門3単元</td>
                <td>
                    X
                    冊</td>
                <td>
                    12月13日</td>
                </tr>
            </table>
        </ContentTemplate>
        </asp:TabPanel>
        </asp:TabContainer>
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

