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
    <style type="text/css">

        .style1
        {
            height: 27px;
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
        <h2>入出庫履歴照会</h2>
        <h1>検索</h1>
        <table id="search">
            <tr>
                <td class="style1">
                    期間で絞り込む：<asp:TextBox ID="TextBox4" runat="server" Width="80px"></asp:TextBox>
                    ～<asp:TextBox ID="TextBox5" runat="server" Width="80px"></asp:TextBox>
                </td>
                <td class="style1">
                    テキストIDで絞り込む：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:Button ID="Button8" runat="server" Text="照会" />
&nbsp;<asp:Button ID="Button11" runat="server" Text="テキスト検索" />
                    <br />
                    </td>
                <td class="end">
                    <asp:Button ID="Button10" runat="server" Text="検索" />
                    </td>
            </tr>
            </table>
        <hr />
        <h1>入出庫履歴</h1>
<table class="sim" style="width:100%; font-size:12px;">
                <tr class="head">
                    <td>
                        登録日</td>
                    <td>
                        取扱い</td>
                    <td>
                        伝票No</td>
                    <td>
                        テキストID</td>
                    <td>
                        テキスト名</td>
                    <td>
                        出庫先</td>
                    <td>
                        在庫</td>
                    <td>
                        実在庫</td>
                </tr>
                <tr class="c">
                <td>
                    2010年9月27日</td>
                <td>
                    入庫</td>
                <td>MECKT-IN15784</td>
                <td>10245-001</td>
                <td>パソコン入門 1単元</td>
                <td>-</td>
                <td>+10 冊</td>
                <td>42 冊</td>
                </tr>
                <tr>
                <td>
                    2010年9月25日</td>
                <td>
                    出庫</td>
                <td>MECKT-OU124541</td>
                <td>10245-001</td>
                <td>パソコン入門 1単元</td>
                <td>00275 佐藤 紀子</td>
                <td>-1 冊</td>
                <td>32 冊</td>
                </tr>
            </table>
        
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

