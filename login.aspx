<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

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
    <div id="header" style="background-color:#FFFFFF;">
        <div id="id">
        <img alt="" src="img/site_id.png" />
        </div>
        
        <div id="menu">
        
        </div>
    </div>
    <div id="container" style="padding-top:5px;">
    
    <div id="left" style="border:1px solid #CCCCCC; float:none; width:400px; margin-right:auto; margin-left:auto;">
    
            <h1>ユーザ認証</h1>
        <table class="add_payment" style="margin:5px; width:390px">
        <tr><td class="l">教室ID</td><td>
            <asp:TextBox ID="TextBox4" runat="server" Width="99%"></asp:TextBox>
            </td></tr>
            <tr><td class="l">パスワード</td><td>
            <asp:TextBox ID="TextBox3" runat="server" Width="99%"></asp:TextBox>
            </td></tr>
        </table>
            <div class="button_area" style="margin:5px;">
                <asp:Button ID="Button7" runat="server" Text="ログイン" />
        </div>    
    </div>
    <div style="clear:both"></div>
    </div>
    </form>
</body>
</html>

