
Partial Class HeroisDaFlora
    Inherits System.Web.UI.Page


    Protected Sub btnFaleConosco_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Valida se o campo foi preenchido
        If Not String.IsNullOrWhiteSpace(TextBox2.Text) Then
            Label3.ForeColor = System.Drawing.Color.Green
            Label3.Text = "Obrigado por compartilhar sua mensagem!"
        Else
            Label3.ForeColor = System.Drawing.Color.Red
            Label3.Text = "Por favor, preencha o campo antes de enviar."
        End If
    End Sub

    Protected Sub btnHeroisDaFauna_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Redireciona para a página desejada
        Response.Redirect("HeroisDaFauna.aspx") ' Evite acentos no nome do arquivo
    End Sub

End Class
