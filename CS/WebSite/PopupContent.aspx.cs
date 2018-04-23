using System;
public partial class popupContent : System.Web.UI.Page {
    protected void btnServer_Click(object sender, EventArgs e) {
        string startUpScript = string.Format("window.parent.HidePopupAndShowInfo('Server','{0}');", textBox.Text);
        Page.ClientScript.RegisterStartupScript(this.GetType(), "ANY_KEY", startUpScript, true);
    }
}
