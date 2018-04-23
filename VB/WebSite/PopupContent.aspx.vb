Imports Microsoft.VisualBasic
Imports System
Partial Public Class popupContent
	Inherits System.Web.UI.Page
	Protected Sub btnServer_Click(ByVal sender As Object, ByVal e As EventArgs)
		Dim startUpScript As String = String.Format("window.parent.HidePopupAndShowInfo('Server','{0}');", textBox.Text)
		Page.ClientScript.RegisterStartupScript(Me.GetType(), "ANY_KEY", startUpScript, True)
	End Sub
End Class
