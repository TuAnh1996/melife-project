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
            <h2>説明会予約表</h2>
             <h1>検索</h1>
            <table id="search">
                <tr>
                    <td>
                        ふりがなで検索：<asp:TextBox ID="TextBox4" runat="server" ForeColor="#CCCCCC" 
                            Height="17px" Width="80px">姓</asp:TextBox>
                        &nbsp;<asp:TextBox ID="TextBox5" runat="server" ForeColor="#CCCCCC" Width="80px">名</asp:TextBox>
                    </td>
                    <td>電話番号で検索：
                     
                        <asp:TextBox ID="TextBox8" runat="server" ForeColor="#CCCCCC" 
                            Height="17px" Width="120px">XXX-XXXX-XXXX</asp:TextBox>
                    </td>
                    <td>
                        日付から絞り込む：<asp:TextBox ID="TextBox6" runat="server" ForeColor="#CCCCCC" 
                            Height="17px" Width="80px">2010/11/14</asp:TextBox>
                        ～<asp:TextBox ID="TextBox7" runat="server" ForeColor="#CCCCCC" Width="80px">2010/11/30</asp:TextBox>
                    </td>
                    <td class="end">
                        <input id="Button3" type="button" value="検索" /></td>
                </tr>
            </table>
            <hr />
            2010年8月1日から8月31日分の説明会予約状況一覧<table class="sim" style="width:100%; font-size:10px;">
                <tr class="head">
                    <td>
                        No</td>
                    <td>
                        出欠</td>
                    <td>
                        受付日</td>
                    <td>
                        お名前</td>
                    <td>
                        電話番号</td>
                    <td>
                        媒体</td>
                    <td>
                        受講生登録へ</td>
                </tr>
                <tr class="c">
                <td>
                    1</td>
                <td>
                    <asp:CheckBox ID="CheckBox4" runat="server" />
                    </td>
                <td>
                    8月27日</td>
                <td>
                    さとう　のりこ</td>
                <td>XX-XXXX-XXXX</td>
                <td>読売新聞の折り込みチラシをみて</td>
                <td>
                    <asp:Button ID="Button16" runat="server" Text="登録" />
                    </td>
                </tr>
                <tr>
                <td>
                    2</td>
                <td>
                    <asp:CheckBox ID="CheckBox5" runat="server" />
                    </td>
                <td>
                    8月24日</td>
                <td>
                    やまだ　たつや</td>
                <td>XX-XXXX-XXXX</td>
                <td>朝日新聞の折り込みチラシをみて</td>
                <td>
                    <asp:Button ID="Button17" runat="server" Text="登録" />
                    </td>
                </tr>
                <tr class="c">
                <td>
                    3</td>
                <td>
                    <asp:CheckBox ID="CheckBox2" runat="server" />
                    </td>
                <td>
                    8月14日</td>
                <td>
                    かんだ　さとこ</td>
                <td>XX-XXXX-XXXX</td>
                <td>商工会議所のホームページをみて</td>
                <td>
                    <asp:Button ID="Button18" runat="server" Text="登録" />
                    </td>
                </tr>
                <tr>
                <td>
                    4</td>
                <td>
                    <asp:CheckBox ID="CheckBox3" runat="server" />
                    </td>
                <td>
                    8月7日</td>
                <td>
                    せと　あきお</td>
                <td>XX-XXXX-XXXX</td>
                <td>読売新聞の折り込みチラシをみて</td>
                <td>
                    <asp:Button ID="Button19" runat="server" Text="登録" />
                    </td>
                </tr>
                <tr class="c">
                <td>
                    5</td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    </td>
                <td>
                    8月1日</td>
                <td>
                    ささき　よしこ</td>
                <td>XX-XXXX-XXXX</td>
                <td>毎日新聞の折り込みチラシをみて</td>
                <td>
                    <asp:Button ID="Button20" runat="server" Text="登録" />
                    </td>
                </tr>
            </table>
                            <div class="button_area">
                    <asp:Button ID="Button13" runat="server" Text="チェックした項目の出席情報を反映する" />
                &nbsp;<asp:Button ID="Button14" runat="server" Text="クリア" />
                &nbsp;<asp:Button ID="Button15" runat="server" Text="戻る" />
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

