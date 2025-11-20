<%@ Page Language="C#" AutoEventWireup="true" CodeFile="experience.aspx.cs" Inherits="_Default" %>

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
            width: 34px;
            height: 18px;
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
            <div class="title">-説明会予約詳細画面</div><div class="close">
                <input type="image" src="./img/close.png" onclick="hiddenDetailsView(); return false;" /></div>
            </asp:Panel>
            </td></tr>
            <tr><td class="body">
            
            <asp:Panel ID="pContents" runat="server" Width="290px" 
                    BackColor="White" BorderWidth="0px">
                    <font style="font-weight:bold;font-size:16px;"> 予約時間：10月14日 14：00～</font><br /> 
                    <br />
                    お名前：<input id="Text1" type="text" /><br /> 
                    <br />
                    PCの所有：<asp:RadioButton ID="RadioButton4" runat="server" Text="あり" />
                    <asp:RadioButton ID="RadioButton5" runat="server" Text="なし" />
                    <br />
                    <br />
                    OSの種類：<asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="Windows Vista Home Edition"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    通学手段：<asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="バス"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    カテゴリ：<asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem Value="初心者向け"></asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;講座：<asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem Value="パソコン入門"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    備考欄：<br /> 
                    <asp:TextBox ID="TextBox3" runat="server" Rows="3" TextMode="MultiLine" 
                        Width="97%"></asp:TextBox>
                    <br />
                    <br />
                    <div style="text-align:right;">
                        <asp:Button ID="Button2" runat="server" Text="登録" />
                        &nbsp;<asp:Button ID="Button6" runat="server" Text="キャンセル" />
                        </div>
            </asp:Panel>
            
            </td></tr>
            </table>
            </asp:Panel>
            <h2>説明会予約状況一覧</h2>

        <h1>検索</h1>
            <table id="search">
                <tr>
                    <td>
                        日付から絞り込む：<asp:TextBox ID="TextBox4" runat="server" ForeColor="#CCCCCC" 
                            Height="17px" Width="80px">2010/11/14</asp:TextBox>
                        ～<asp:TextBox ID="TextBox5" runat="server" ForeColor="#CCCCCC" Width="80px">2010/11/30</asp:TextBox>
                    </td>
                    <td>
                        時間から絞り込む：<asp:DropDownList ID="DropDownList5" runat="server">
                            <asp:ListItem Value="10:00"></asp:ListItem>
                        </asp:DropDownList>
                        ～<asp:DropDownList ID="DropDownList6" runat="server">
                            <asp:ListItem Value="16:00"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="end">
                        <input id="Button3" type="button" value="検索" /></td>
                </tr>
            </table>
            <hr />
        
            2010年11月14日から11月30日分の説明会予約状況一覧<table class="sim" style="width:100%;">
                <tr class="head">
                    <td>
                        状態</td>
                    <td>
                        日付</td>
                    <td>
                        開始時間</td>
                    <td>
                        現在の空席数</td>
                    <td>
                        詳細</td>
                </tr>
                <tr class="c">
                    <td>
                        <img alt="" class="style1" src="img/false.jpg" /><br />
                        予約可能</td>
                    <td>
                        11月14日</td>
                    <td>
                        10:00～</td>
                    <td>
                        0 席 / 5 席</td>
                    <td>
                        <input id="Button7" type="button" value="詳細" /></td>
                </tr>
                <tr>
                    <td>
                        <img alt="" class="style1" src="img/false.jpg" /><br />
                        予約可能</td>
                    <td>
                        11月14日</td>
                    <td>
                        14:00～</td>
                    <td>
                        0 席 / 5 席</td>
                    <td>
                        <input id="Button14" type="button" value="詳細" /></td>
                </tr>
                <tr class="c">
                    <td>
                        <img alt="" class="style1" src="img/true.jpg" /><br />
                        予約可能</td>
                    <td>
                        11月14日</td>
                    <td>
                        16:00～</td>
                    <td>
                        5 席 / 5 席</td>
                    <td>
                        <input id="Button15" type="button" value="詳細" /></td>
                </tr>
                <tr>
                    <td>
                        <img alt="" class="style1" src="img/true.jpg" /><br />
                        予約可能</td>
                    <td>
                        11月17日</td>
                    <td>
                        10:00～</td>
                    <td>
                        &nbsp;3 席 / 5 席</td>
                    <td>
                        <input id="Button16" type="button" value="詳細" /></td>
                </tr>
                <tr class="c">
                    <td>
                        <img alt="" class="style1" src="img/true.jpg" /><br />
                        予約可能</td>
                    <td>
                        11月17日</td>
                    <td>
                        14:00～</td>
                    <td>
                        4 席 / 5 席</td>
                    <td>
                        <input id="Button17" type="button" value="詳細" /></td>
                </tr>
                <tr>
                    <td>
                        <img alt="" class="style1" src="img/false.jpg" /><br />
                        予約可能</td>
                    <td>
                        11月17日</td>
                    <td>
                        16:00～</td>
                    <td>
                        0 席 / 5 席</td>
                    <td>
                        <input id="Button18" type="button" value="詳細" /></td>
                </tr>
                <tr class="c">
                    <td>
                        <img alt="" class="style1" src="img/true.jpg" /><br />
                        予約可能</td>
                    <td>
                        11月24日</td>
                    <td>
                        14:00～</td>
                    <td>
                        1 席 / 5 席</td>
                    <td>
                        <input id="Button19" type="button" value="詳細" /></td>
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

