
Partial Class CadHerois
    Inherits System.Web.UI.Page


    Protected Sub btnCadastrar_Click(sender As Object, e As EventArgs) Handles btnCadastrar.Click
        SqlDataSource1.Insert()

    End Sub

    Protected Sub btnLimpar_Click(sender As Object, e As EventArgs) Handles btnLimpar.Click
        txtCpf.Text = ""
        txtDataNasc.Text = ""
        txtEmail.Text = ""
        txtEndereco.Text = ""
        txtHistoria.Text = ""
        txtNome.Text = ""
        txtTelefone.Text = ""
        txtCpf.Focus()


    End Sub
End Class
