
Partial Class Resultado
    Inherits System.Web.UI.Page

    Protected Sub btnCadastrar_Click(sender As Object, e As EventArgs)
        ' Captura os dados do formulário
        Dim nome As String = nome
        Dim descricao As String = descricao

    End Sub

    Protected Sub btnCadastroNecessidades_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Redireciona para a página do módulo de inscrição (sem acentos no nome do arquivo)
        Response.Redirect("CadastroNecessidades.aspx")
    End Sub


End Class
