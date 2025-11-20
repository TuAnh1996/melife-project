<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forrow.aspx.cs" Inherits="_Default" %>

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
                    Width="300px" Height="20px" BorderWidth="0px" CssClass="dragMe">
            <div class="title">-フォロー履歴の追加</div><div class="close">
                <input type="image" src="./img/close.png" onclick="hiddenDetailsView(); return false;" /></div>
            </asp:Panel>
            </td></tr>
            <tr><td class="body">
            <asp:Panel ID="pContents" runat="server" Width="290px" 
                    BackColor="White" BorderWidth="0px">
                    <div style="padding:10px;">
                        フォロー方法：<asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Value="ダイレクトメール"></asp:ListItem>
                        </asp:DropDownList>
                        <br /> 
                    <br />
                        フォロー日：<asp:TextBox ID="TextBox3" runat="server" Width="100px" 
                            ForeColor="#CCCCCC">2010/11/14</asp:TextBox>
                        &nbsp;時間：<asp:TextBox ID="TextBox5" runat="server" ForeColor="#CCCCCC" 
                            Width="66px">1004</asp:TextBox>
                        <br />
                        <br />
                        フォロー内容：<br /> 
                        <asp:TextBox ID="TextBox4" runat="server" Rows="2" TextMode="MultiLine" 
                            Width="97%"></asp:TextBox>
                        <br />
                        <br />
                <div style="text-align:right;">
                <input id="Button1" type="button" value="登録" />
                <input onclick="hiddenDetailsView();return false;" id="Button2" type="button" value="キャンセル" />
                </div>
                </div>
            </asp:Panel>
            </td></tr>
            </table>
            </asp:Panel>
            <h2>フォローリスト</h2>

        
            <asp:TabContainer ID="TabContainer1" runat="server">

                
                <asp:TabPanel runat="server" ID="tabs"><HeaderTemplate>
            未更新者リスト(残回数あり)
            
</HeaderTemplate>
<ContentTemplate>
<table class="sim" style="width:100%; font-size:10px;">
                <tr class="head">
                    <td>
                        印刷</td>
                    <td>
                        受講生ID</td>
                    <td>
                        受講生名</td>
                    <td>
                        電話番号</td>
                    <td>
                        携帯電話番号</td>
                    <td>
                        最終受講日</td>
                    <td>
                        フォロー履歴</td>
                    <td>
                        担当者</td>
                    <td>
                        フォロー方法</td>
                    <td>
                        フォロー内容</td>
                    <td>
                        フォロー履歴</td>
                </tr>
                <tr class="c">
                    <td rowspan="2">
                        <asp:CheckBox ID="CheckBox2" runat="server" />
                        </td>
                    <td rowspan="2">00487
                        </td>
                    <td rowspan="2">岩崎　義憲 様
                        </td>
                    <td rowspan="2">
                        XX-XXXX-XXXX</td>
                    <td rowspan="2">
                        XXX-XXXX-XXXX</td>
                    <td>
                        2010/10/7</td>
                    <td>
                        2010/1/24</td>
                    <td>
                        山田</td>
                    <td>
                        ダイレクトメール</td>
                    <td>
                        ダイレクトメール</td>
                    <td rowspan="2">
                        <asp:Button ID="Button9" runat="server" Text="追加" />
                    </td>
                </tr>
                <tr class="c">
                    <td>
                        2010/10/7</td>
                    <td>
                        2010/1/24</td>
                    <td>
                        佐藤</td>
                    <td>
                        電話応対</td>
                    <td>
                        未消化分のご案内</td>
                </tr>
            </table>
            <div class="button_area">
                <input id="Button8" type="button" value="リストを印刷する" />
                <asp:Button ID="Button11" runat="server" Text="宛名印刷" />
        </div>
        
</ContentTemplate>
</asp:TabPanel>
<asp:TabPanel runat="server" ID="tabs2"><HeaderTemplate>
            未更新者リスト(残回数なし)
            
</HeaderTemplate>
<ContentTemplate>
            該当するデータはありません
            
</ContentTemplate>
</asp:TabPanel>
<asp:TabPanel runat="server" ID="TabPanel1"><HeaderTemplate>
            未入学者一覧
            
</HeaderTemplate>
<ContentTemplate>
            該当するデータはありません
            
</ContentTemplate>
</asp:TabPanel>
<asp:TabPanel runat="server" ID="TabPanel2"><HeaderTemplate>
            休学期限到来予定
            
</HeaderTemplate>
<ContentTemplate>
            該当するデータはありません
            
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

