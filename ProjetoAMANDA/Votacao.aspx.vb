
Partial Class Votacao
    Inherits System.Web.UI.Page



    Private Property TabelaHerois As System.Data.DataTable
        Get
            If ViewState("TabelaHerois") Is Nothing Then
                Dim dt As New System.Data.DataTable()
                dt.Columns.Add("Id", GetType(Integer))
                dt.Columns.Add("Nome", GetType(String))
                dt.Columns.Add("Descricao", GetType(String))
                dt.Columns.Add("Votos", GetType(Integer))

                dt.Rows.Add(1, "João", "Ajudou na enchente", 5)
                dt.Rows.Add(2, "Maria", "Cuida dos animais", 8)
                dt.Rows.Add(3, "Carlos", "Organizou mutirão de limpeza", 3)

                ViewState("TabelaHerois") = dt
            End If
            Return CType(ViewState("TabelaHerois"), System.Data.DataTable)
        End Get
        Set(value As System.Data.DataTable)
            ViewState("TabelaHerois") = value
        End Set
    End Property

    Private Property VotacaoFeita As Boolean
        Get
            Return If(ViewState("VotacaoFeita"), False)
        End Get
        Set(value As Boolean)
            ViewState("VotacaoFeita") = value
        End Set
    End Property

    Protected Sub Page_Load(ByVal sender As Object)

        If Not IsPostBack Then
            gridVotacao.DataSource = TabelaHerois
            gridVotacao.DataBind()
            btnEnviar.Visible = False
        Else
            btnEnviar.Visible = VotacaoFeita
        End If
    End Sub


    Protected Sub gridVotacao_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs)
        If e.CommandName = "Votar" Then
            ' Obtém o índice da linha a partir do CommandArgument
            Dim index As Integer = Convert.ToInt32(e.CommandArgument)
            ' Obtém o ID do herói usando DataKeys
            Dim idHeroi As Integer = Convert.ToInt32(gridVotacao.DataKeys(index).Value)

            ' Incrementa o voto no DataTable
            Dim dt As System.Data.DataTable = TabelaHerois
            For Each linha As System.Data.DataRow In dt.Rows
                If Convert.ToInt32(linha("Id")) = idHeroi Then
                    linha("Votos") = Convert.ToInt32(linha("Votos")) + 1
                    Exit For
                End If
            Next

            ' Atualiza ViewState e GridView
            TabelaHerois = dt
            gridVotacao.DataSource = dt
            gridVotacao.DataBind()

            ' Após atualizar os votos...
            VotacaoFeita = True
            btnEnviar.Visible = True
        End If
    End Sub

    Protected Sub gridVotacao_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles gridVotacao.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim btn As Button = CType(e.Row.Cells(4).Controls(0), Button)
            btn.CommandArgument = e.Row.RowIndex.ToString()
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

        If Not IsPostBack Then
            gridVotacao.DataSource = TabelaHerois
            gridVotacao.DataBind()
            btnEnviar.Visible = False ' Oculta o botão até que haja votação
        Else
            btnEnviar.Visible = VotacaoFeita ' Mostra se já houve voto
        End If
    End Sub
    
     Protected Sub btnEnviar_Click(ByVal sender As Object, ByVal e As EventArgs)
     SqlDataSource2.Insert()
     lblMensagem.Text = "Mensagem enviada com sucesso! Obrigado pelo contato."
 End Sub

    Protected Sub btnResultado_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Redireciona para a página do módulo de inscrição (sem acentos no nome do arquivo)
        Response.Redirect("Resultado.aspx")
    End Sub

End Class
