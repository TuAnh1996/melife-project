<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pay_list.aspx.cs" Inherits="_Default" %>

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
            <div class="title">-報告資料の作成</div><div class="close">
                <input type="image" src="./img/close.png" onclick="hiddenDetailsView(); return false;" /></div>
            </asp:Panel>
            </td></tr>
            <tr><td class="body">
            <asp:Panel ID="pContents" runat="server" Width="290px" 
                    BackColor="White" BorderWidth="0px">
                    
                <div style="padding:10px;">
                    <asp:RadioButton ID="RadioButton4" runat="server" Text="日計表のダウンロード" />
                    <br />
                    <input id="Text1" type="text" />
                    <input id="Button1" type="button" value="ダウンロード" />
                    <br />
                    <br />
                    <asp:RadioButton ID="RadioButton5" runat="server" Text="入金記録表のダウンロード" />
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
            <h2>入出金履歴照会</h2>
            <h1>検索</h1>
        <table id="search">
            <tr>
                <td class="style1">
                    期間で絞り込む：<asp:TextBox ID="TextBox4" runat="server" Width="100px" ForeColor="#CCCCCC">例) 2010/11/14</asp:TextBox>
                    ～<asp:TextBox ID="TextBox5" runat="server" Width="100px" ForeColor="#CCCCCC">例) 2010/11/14</asp:TextBox>
                </td>
                <td class="style1">
                    受講生IDで絞り込む：<asp:TextBox ID="TextBox3" runat="server" ForeColor="#CCCCCC" 
                        Width="70px">10012</asp:TextBox>
                    <asp:Button ID="Button8" runat="server" Text="照会" />
&nbsp;<asp:Button ID="Button9" runat="server" Text="受講生検索" />
                    <br />
                    -ここに受講生名が表示されます</td>
                <td class="style1">
                    入金区分で絞り込む：<asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="追加申し込み"></asp:ListItem>
                        <asp:ListItem Value="更新申し込み"></asp:ListItem>
                        <asp:ListItem Value="返金"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="end">
                    <asp:Button ID="Button10" runat="server" Text="検索" />
                </td>
            </tr>
            </table>
            <hr />
            <h1>入出金履歴</h1>
            2010年12月8日分～2010年12月8日分の入金履歴<asp:GridView ID="GridView1" runat="server" BackColor="White" 
                BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                ForeColor="Black" GridLines="Vertical" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField>
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <div class="button_area">
                <h3 style="margin:0; text-decoration:underline;">合計：20,600 円</h3>
                <hr />
                <asp:Button ID="Button7" runat="server" Text="選択した項目を削除" />
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

