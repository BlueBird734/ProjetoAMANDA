
Partial Class HeroisDosLixos
    Inherits System.Web.UI.Page


    Protected Sub btnFaleConosco_Click(sender As Object, e As EventArgs)
        ' Verifica se o usuário escreveu alguma coisa no campo TextBox2
        If Not String.IsNullOrWhiteSpace(TextBox2.Text) Then
            ' Mensagem de sucesso (poderia ser também um redirecionamento ou gravação no banco)
            Label2.ForeColor = System.Drawing.Color.Green
            Label2.Text = "Obrigado por compartilhar sua mensagem!"
        Else
            ' Mensagem de erro caso o campo esteja vazio
            Label2.ForeColor = System.Drawing.Color.Red
            Label2.Text = "Por favor, preencha o campo antes de enviar."
        End If
    End Sub

    Protected Sub btnHeroisDaFlora_Click(sender As Object, e As EventArgs) Handles btnHeroisDaFlora1.Click
        ' Aqui você pode redirecionar para outra página, por exemplo
        Response.Redirect("HeroisDaFlora.aspx")
    End Sub
End Class
