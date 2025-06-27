
Partial Class ModuloDeInscricao
    Inherits System.Web.UI.Page

    Protected Sub btnEnviar_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Verifica se os campos foram preenchidos
        If String.IsNullOrWhiteSpace(txtNomeHeroi.Text) OrElse String.IsNullOrWhiteSpace(txtDescricao.Text) Then
            lblMensagem.ForeColor = System.Drawing.Color.Red
            lblMensagem.Text = "Por favor, preencha todos os campos antes de enviar."
        Else
            lblMensagem.ForeColor = System.Drawing.Color.Green
            lblMensagem.Text = "Herói indicado com sucesso! Obrigado pela sua contribuição."

            ' (Opcional) Aqui você poderia salvar em banco de dados ou enviar por e-mail

            ' Limpar os campos após envio
            txtNomeHeroi.Text = ""
            txtDescricao.Text = ""
        End If
    End Sub

    Protected Sub btnVotacao_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Redireciona para a página do módulo de inscrição (sem acentos no nome do arquivo)
        Response.Redirect("Votacao.aspx")
    End Sub



End Class
