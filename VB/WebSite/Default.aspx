<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

	<script type="text/javascript">
		function OnBtnShowPopupClick() {
			popup.Show();
		}
		function HidePopupAndShowInfo(closedBy, returnValue) {
			popup.Hide();
			alert('Closed By: ' + closedBy + '\nReturn Value: ' + returnValue);
		}
	</script>

	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<input id="btnShowPopup" type="button" onclick="OnBtnShowPopupClick();" value="Show Popup" />
			<dx:ASPxPopupControl ID="popup" runat="server" ClientInstanceName="popup" ContentUrl="~/PopupContent.aspx"
				Width="300px" Height="200px">
			</dx:ASPxPopupControl>

		</div>
	</form>
</body>
</html>