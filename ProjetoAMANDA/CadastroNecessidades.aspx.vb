
Partial Class CadastroNecessidades
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, gridLocais As Object, e As EventArgs)
        If Not IsPostBack Then
            Dim dt As New Data.DataTable()
            dt.Columns.Add("Bairro")
            dt.Columns.Add("Casa")
            dt.Columns.Add("Lojas")
            dt.Columns.Add("Ruas")

            dt.Rows.Add("Centro", "Casa 01", "Loja A", "Rua 10")
            dt.Rows.Add("Vila Nova", "Casa 02", "Loja B", "Rua 12")
            dt.Rows.Add("Jardim", "Casa 03", "Loja C", "Rua 5")

            gridLocais.DataSource = dt
            gridLocais.DataBind()
        End If
    End Sub

    ' Essa é a definição da classe (estrutura do objeto)
    Public Class Demanda
        Public Property Nome As String
        Public Property Categoria As String
        Public Property Descricao As String
        Public Property Local As String
    End Class

    Protected Sub btnRegistrar_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Validação simples
        If String.IsNullOrWhiteSpace(txtNome.Text) OrElse
           String.IsNullOrWhiteSpace(ddlCategoria.SelectedValue) OrElse
           String.IsNullOrWhiteSpace(txtDescricao.Text) Then

            lblMensagem.ForeColor = Drawing.Color.Red
            lblMensagem.Text = "Por favor, preencha todos os campos corretamente."
            Return
        End If

        ' 🔽 Aqui está a criação de uma referência de objeto
        Dim novaDemanda As New Demanda()

        ' Preenche a instância (objeto) com os dados do formulário
        novaDemanda.Nome = txtNome.Text
        novaDemanda.Categoria = ddlCategoria.SelectedValue
        novaDemanda.Descricao = txtDescricao.Text


        ' (Aqui você pode salvar em lista, banco de dados, etc.)

        ' Mensagem de sucesso
        lblMensagem.ForeColor = Drawing.Color.Green
        lblMensagem.Text = "Demanda registrada com sucesso!"

        ' Limpa campos
        txtNome.Text = ""
        ddlCategoria.ClearSelection()
        txtDescricao.Text = ""
    End Sub

End Class
