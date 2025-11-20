<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="./css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="./js/prototype.js" type="text/javascript"></script>
    <script src="js/heightLine.js" type="text/javascript"></script>
    <script type="text/javascript">

        
    </script>
    </head>
<body>
    <form id="form1" runat="server">
        <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>
    <div id="container">
    <div style="padding:10px; margin:0px; text-align:right;">
        <asp:Button ID="Button2" runat="server" Text="このページを印刷する" />
        　│　違う月の座席表を印刷する：<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="12"></asp:ListItem>
        </asp:DropDownList>月分
        <asp:Button ID="Button1" runat="server" Text="表示" />
        </div>
    <hr />
    
    <div id="left" class="heightLine" style="width:70%; margin:0 15%;">
    <h1 style="margin:0px; padding-top:10px;">　12月度　座席表(残席数表示)</h1>
    <table class="reservation">
        <tr class="header"><td></td><td>&nbsp;</td><td>10:00<br />│<br />10:50</td><td>11:00<br />│<br />11:50</td><td>12:00<br />│<br />12:50</td><td>
            お昼</td><td>14:00<br />│<br />14:50</td><td>15:00<br />│<br />15:50</td><td>16:00<br />│<br />16:50</td><td>
            休憩</td><td>18:30<br />│<br />19:20</td><td>19:30<br />│<br />20:20</td></tr>
        <tr><td class="date">1日</td><td class="date">（金）</td><td>
            14</td><td>
                12</td><td>
                7</td><td class="g"></td><td>
            12</td><td>
                15</td><td bgcolor="Pink">
                1</td>
            <td class="g"></td><td bgcolor="Red">
            0</td><td>
                12</td>
            </tr>
        <tr><td class="date">2日</td><td class="date">（土）</td><td>
            12</td><td bgcolor="Pink">
                4</td><td bgcolor="Pink">
                5</td><td class="g"></td><td bgcolor="Pink">
            5</td><td bgcolor="Pink">
                2</td><td>
                24</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="g date">3日</td><td class="g date">（日）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">4日</td><td class="date">（月）</td><td>
            12</td><td bgcolor="Pink">
                7</td><td bgcolor="Red">
                0</td><td class="g"></td><td bgcolor="Red">
            0</td><td>
                12</td><td bgcolor="Pink">
                2</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">5日</td><td class="date">（火）</td><td>
            12</td><td>
                32</td><td bgcolor="Pink">
                2</td><td class="g"></td><td bgcolor="Pink">
            4</td><td>
                17</td><td>
                21</td>
            <td class="g"></td><td bgcolor="Red">
                0</td><td>
                24</td>
            </tr>
        <tr><td class="date">6日</td><td class="date">（水）</td><td>
            14</td><td>
                12</td><td>
                7</td><td class="g"></td><td>
            8</td><td>
                14</td><td>
                8</td>
            <td class="g"></td><td bgcolor="Pink">
            4</td><td>
                17</td>
            </tr>
        <tr><td class="date">7日</td><td class="date">（木）</td><td>
            12</td><td bgcolor="Pink">
                4</td><td bgcolor="Pink">
                5</td><td class="g"></td><td>
            17</td><td bgcolor="Pink">
                4</td><td>
                10</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr style="border:2px solid #000000; background-color:Orange;"><td class="date">8日</td><td class="date">（金）</td><td>
            10</td><td>
                7</td><td>
                4</td><td class="g"></td><td>
            21</td><td>
                8</td><td>
                12</td>
            <td class="g"></td><td>
            17</td><td>
                4</td>
            </tr>
        <tr><td class="date">9日</td><td class="date">（土）</td><td>
            14</td><td>
                12</td><td>
                7</td><td class="g"></td><td bgcolor="Pink">
            3</td><td>
                8</td><td>
                24</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="g date">10日</td><td class="g date">（日）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="g date">11日</td><td class="g date">（月）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">12日</td><td class="date">（火）</td><td>
            12</td><td>
                32</td><td bgcolor="Pink">
                2</td><td class="g"></td><td>
            12</td><td>
                32</td><td bgcolor="Pink">
                2</td>
            <td class="g"></td><td>
            12</td><td bgcolor="Pink">
                2</td>
            </tr>
        <tr><td class="date">13日</td><td class="date">（水）</td><td>
            14</td><td>
                12</td><td>
                7</td><td class="g"></td><td>
            14</td><td>
                12</td><td>
                7</td>
            <td class="g"></td><td bgcolor="Red">
                0</td><td>
                24</td>
            </tr>
        <tr><td class="date">14日</td><td class="date">（木）</td><td>
            12</td><td>
                15</td><td bgcolor="Pink">
                1</td><td class="g"></td><td>
            25</td><td bgcolor="Red">
                0</td><td>
                24</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">15日</td><td class="date">（金）</td><td bgcolor="Pink">
            5</td><td bgcolor="Pink">
                2</td><td>
                24</td><td class="g"></td><td>
            5</td><td bgcolor="Red">
                0</td><td>
                7</td>
            <td class="g date"></td><td bgcolor="Pink">
            1</td><td bgcolor="Pink">
                3</td>
            </tr>
        <tr><td class="date">16日</td><td class="date">（土）</td><td>
            24</td><td bgcolor="Red">
                0</td><td bgcolor="Pink">
                5</td><td class="g"></td><td>
            24</td><td bgcolor="Pink">
                5</td><td>
                34</td>
            <td class="g"></td>
            <td class="g date"></td><td class="g"></td></tr>
        <tr><td class="g date">17日</td><td class="g date">（日）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">18日</td><td class="date">（月）</td><td>
            12</td><td>
                7</td><td bgcolor="Red">
                0</td><td class="g"></td><td bgcolor="Red">
            0</td><td>
                12</td><td bgcolor="Pink">
                2</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">19日</td><td class="date">（火）</td><td>
            12</td><td>
                32</td><td bgcolor="Pink">
                2</td><td class="g"></td><td>
            4</td><td>
                17</td><td>
                21</td>
            <td class="g"></td><td>
            11</td><td>
                14</td>
            </tr>
        <tr><td class="date">20日</td><td class="date">（水）</td><td>
            14</td><td>
                12</td><td>
                7</td><td class="g"></td><td>
            8</td><td>
                14</td><td>
                8</td>
            <td class="g"></td><td bgcolor="Pink">
            4</td><td>
                7</td>
            </tr>
        <tr><td class="date">21日</td><td class="date">（木）</td><td>
            12</td><td bgcolor="Pink">
                4</td><td bgcolor="Pink">
                5</td><td class="g"></td><td>
            17</td><td bgcolor="Pink">
                4</td><td>
                10</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">22日</td><td class="date">（金）</td><td>
            10</td><td>
                7</td><td bgcolor="Pink">
                4</td><td class="g">&nbsp;</td><td>
            21</td><td>
                8</td><td>
                12</td>
            <td class="g"></td><td bgcolor="Pink">
            4</td><td>
                6</td>
            </tr>
        <tr><td class="date">23日</td><td class="date">（土）</td><td>
            14</td><td>
                12</td><td>
                7</td><td class="g"></td><td>
            3</td><td>
                8</td><td>
                24</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="g date">24日</td><td class="g date">（日）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">25日</td><td class="date">（月）</td><td bgcolor="Red">
            0</td><td>
                12</td><td bgcolor="Pink">
                2</td>
            <td class="g"></td><td>
            12</td><td>
                7</td><td bgcolor="Red">
                0</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">26日</td><td class="date">（火）</td><td bgcolor="Pink">
            4</td><td>
                17</td><td>
                21</td>
            <td class="g"></td><td>
            12</td><td>
                32</td><td bgcolor="Pink">
                2</td>
            <td class="g"></td><td bgcolor="Pink">
            1</td><td bgcolor="Pink">
                4</td>
            </tr>
        <tr><td class="date">27日</td><td class="date">（水）</td><td>
            8</td><td>
                14</td><td>
                8</td>
            <td class="g"></td><td>
            14</td><td>
                12</td><td>
                7</td>
            <td class="g"></td><td>
            11</td><td>
                8</td>
            </tr>
        <tr><td class="date">28日</td><td class="date">（木）</td><td>
            17</td><td bgcolor="Pink">
                4</td><td>
                10</td>
            <td class="g"></td><td>
            12</td><td bgcolor="Pink">
                4</td><td bgcolor="Pink">
                5</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="date">29日</td><td class="date">（金）</td><td>
            21</td><td>
                8</td><td>
                12</td>
            <td class="g"></td><td>
            10</td><td>
                7</td><td bgcolor="Pink">
                4</td>
            <td class="g"></td><td>
            12</td><td>
                9</td>
            </tr>
        <tr><td class="date">30日</td><td class="date">（土）</td><td bgcolor="Pink">
            3</td><td>
                8</td><td>
                24</td>
            <td class="g"></td><td>
            14</td><td>
                12</td><td>
                7</td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        <tr><td class="g date">31日</td><td class="g date">（日）</td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td><td class="g"></td><td class="g"></td><td class="g"></td>
            <td class="g"></td>
            <td class="g"></td><td class="g"></td></tr>
        </table>
    </div>
    <div style="clear:both"></div>
    </div>
    </form>
</body>
</html>

