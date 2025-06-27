
Partial Class login
    Inherits System.Web.UI.Page


    Protected Sub btnEnviar_Click(sender As Object, e As EventArgs) Handles btnEnviar.Click
        Dim nome As String = txtNome.Text.Trim()
        Dim email As String = txtEmail.Text.Trim()
        Dim senha As String = txtSenha.Text

        If nome = "" OrElse email = "" OrElse senha = "" Then
            lblMensagem.Text = "Por favor, preencha todos os campos."
            Return
        End If

        If Not System.Text.RegularExpressions.Regex.IsMatch(email, "^[^@\s]+@[^@\s]+\.[^@\s]+$") Then
            lblMensagem.Text = "Email inválido."
            Return
        End If

        If senha.Length < 6 Then
            lblMensagem.Text = "A senha deve ter pelo menos 6 caracteres."
            Return
        End If

        lblMensagem.Text = ""
        Response.Redirect("Inicio.aspx")
    End Sub
End Class
