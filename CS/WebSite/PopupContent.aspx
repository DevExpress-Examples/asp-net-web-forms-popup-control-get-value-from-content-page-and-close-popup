<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PopupContent.aspx.cs" Inherits="popupContent" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script type="text/javascript">
        function OnBtnClientClick(s, e) {
            window.parent.HidePopupAndShowInfo('Client', textBox.GetText());
        }
    </script>

    <title>Popup Content</title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxTextBox ID="textBox" runat="server" Width="170px" ClientInstanceName="textBox">
        </dx:ASPxTextBox>
        <table>
            <tr>
                <td>
                    <dx:ASPxButton ID="btnClient" runat="server" Text="Client" AutoPostBack="False" ClientInstanceName="btnClient">
                        <ClientSideEvents Click="OnBtnClientClick" />
                    </dx:ASPxButton>
                </td>
                <td>
                    <dx:ASPxButton ID="btnServer" runat="server" Text="Server" OnClick="btnServer_Click">
                    </dx:ASPxButton>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
