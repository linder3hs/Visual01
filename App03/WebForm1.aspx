<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="App03.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 237px;
        }
        .auto-style4 {
            width: 237px;
        }
        .auto-style6 {
            height: 140px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Libros</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DDLibros" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDLibros_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" rowspan="2">
                    <asp:Image ID="ImgLibro" runat="server" Height="115px" Width="161px" />
                </td>
                <td class="auto-style6">
                    <asp:Label ID="lblPrecio" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
