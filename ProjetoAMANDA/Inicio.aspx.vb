
Partial Class Inicio
    Inherits System.Web.UI.Page


    Protected Sub btnHeroisDosLixos_Click(sender As Object, e As EventArgs) Handles btnHeroisDosLixos0.Click
        Response.Redirect("HeroisDosLixos.aspx")
    End Sub

    Protected Sub btnFaleConosco_Click(sender As Object, e As EventArgs) Handles btnFaleConosco.Click
        ' Verifica se o usuário escreveu alguma coisa
        If Not String.IsNullOrWhiteSpace(TextBox2.Text) Then
            ' Mensagem de sucesso (você pode redirecionar ou salvar no banco aqui)
            Label2.ForeColor = System.Drawing.Color.Green
            Label2.Text = "Obrigado por compartilhar! Sua história será analisada."

            ' Aqui você pode chamar um método para salvar a mensagem ou redirecionar:
            ' Response.Redirect("FormularioDeRespostas.aspx")
        Else
            ' Alerta de campo obrigatório
            Label2.ForeColor = System.Drawing.Color.Red
            Label2.Text = "Por favor, digite sua história antes de enviar."
        End If
    End Sub
End Class
