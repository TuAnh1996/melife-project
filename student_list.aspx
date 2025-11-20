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
        <h2>受講生リスト照会</h2>
        <h1>検索</h1>
        <table id="search">
            <tr>
                <td class="style1">
                    &nbsp;
                    入学時期で絞り込む：<asp:TextBox ID="TextBox4" runat="server" Width="80px"></asp:TextBox>
                    ～<asp:TextBox ID="TextBox5" runat="server" Width="80px"></asp:TextBox>
                </td>
                <td class="style1">
                    受講生IDで絞り込む：<asp:TextBox ID="TextBox3" runat="server" Width="80px"></asp:TextBox>
                    <asp:Button ID="Button8" runat="server" Text="照会" />
&nbsp;<asp:Button ID="Button11" runat="server" Text="受講生検索" />
                    </td>
                <td class="style1">
                    ステータスで絞り込む：<asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="減耗対象者"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="end">
                    <asp:Button ID="Button10" runat="server" Text="検索" />
                </td>
            </tr>
            </table>
        <hr />
        2010年12月1日～2010年12月31日分
<table class="sim" style="width:100%; font-size:10px;">
                <tr class="head">
                    <td>
                        
                    </td>
                    <td>
                        操作</td>
                    <td>
                        入学年月日</td>
                    <td>
                        受講生ID</td>
                    <td>
                        お名前</td>
                    <td>
                        ふりがな</td>
                    <td>
                        性別</td>
                    <td>
                        現在受講中の講座</td>
                    <td>
                        ステータス</td>
                    <td>
                        担当</td>
                </tr>
                <tr class="c">
                <td>
                <asp:CheckBox ID="CheckBox2" runat="server" />
                </td>
                <td>
                    <asp:Button ID="Button9" runat="server" Text="詳細" />
&nbsp;</td>
                <td>
                    2010年9月27日</td>
                <td>00430</td>
                <td>岩崎　義憲</td>
                <td>いわさき　よしのり</td>
                <td>男性</td>
                <td>パソコン入門Windows7編</td>
                <td>受講中</td>
                <td>山田</td>
                </tr>
            </table>
        <hr />
        <div class="button_area">
            チェックした受講生のステータスを変更する：<asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem Value="減耗"></asp:ListItem>
                <asp:ListItem Value="休減"></asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button12" runat="server" Text="登録" />
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

