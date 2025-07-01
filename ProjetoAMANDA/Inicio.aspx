<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Inicio.aspx.vb" Inherits="Inicio" %>

<<!DOCTYPE html>
<html lang="pt-BR">
<head runat="server">
    <meta charset="utf-8" />
    <title>Heróis do Bairro</title>

    <style >
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

.container {
    width: 85%;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    height: 3104px;
        }

h1 {
    text-align: center;
    font-weight: bold;
    text-transform: uppercase;
    color: #333;
    margin-bottom: 100px;
}

p {
    text-align: justify;
    line-height: 1.6;
    color: #555;
    font-size: 1.1em;
    margin-bottom: 15px;
}
.button.is-primary {
    background-color: #007BFF;
    border-color: #007BFF;
}
.field {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], textarea {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        input[type="file"] {
            margin-top: 5px;
        }

        .btn {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }
</style>

</head>
<body>
     <form id="form1" runat="server">

        <div class="container">
            <h1>Heróis das Ruas</h1>
            <h2><strong>♦Bem-vindo ao Heróis das Ruas♦</strong></h2>


<p><strong>🌟 Onde os pequenos gestos constroem grandes mudanças</strong></p>

<p>Você já parou para pensar em quem mantém o seu bairro mais limpo, seguro e acolhedor?
    Aqui no Heróis das Ruas, celebramos as pessoas que, com atitudes simples e generosas, fazem toda a diferença na vida da comunidade.

Não são superpoderes que movem esses heróis — são ações como:</p>
	<p>•	🧹 Recolher o lixo das ruas por conta própria</p>
	<p>•	🧓 Ajudar vizinhos idosos ou com dificuldades</p>
	<p>•	🌻 Cuidar de jardins comunitários</p>
	<p>•	👮‍♂ Promover segurança e respeito</p>
	<p>•	🤝 Organizar ações solidárias e eventos culturais</p>

<p><strong>Quem são esses heróis?</strong></p>

<p>São cidadãos como você: moradores que se importam com o lugar onde vivem e fazem questão de deixar tudo melhor para todos. Este site é o espaço para contar suas histórias, inspirar novas atitudes e mostrar que a verdadeira transformação começa com um bom exemplo.</p>

⸻

       <p><strong>💬 Queremos ouvir sua história!</strong></p> 

<p>Você conhece ou é um Herói do Bairro? Compartilhe sua história conosco! Sua atitude pode inspirar muitas outras</p>

             <label class="label">Fale Conosco</label>
<div class="control">
<asp:Panel ID="pnlFormulario2" runat="server" Width="1306px" >
<!-- Formulário 1 -->
<asp:TextBox ID="TextBox2" runat="server" CssClass="input" placeholder="Digite sua resposta" Width="721px"></asp:TextBox> &nbsp;<asp:Label ID="Label2" runat="server" ForeColor="Green">
    
    
    
    </asp:Label>
    <br />
            </asp:Panel>
</div>


            <formv>

                    <br />

<asp:Button ID="btnFaleConosco" runat="server" Text="FaleConosco" CssClass="btn" />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Nome" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" ReadOnly="True" SortExpression="Nome" />
                <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone" />
                <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
                <asp:BoundField DataField="Data_Registro" HeaderText="Data_Registro" SortExpression="Data_Registro" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BDFinalAmandaConnectionString %>" DeleteCommand="DELETE FROM [FaleConosco] WHERE [Nome] = @original_Nome AND [Telefone] = @original_Telefone AND (([Descricao] = @original_Descricao) OR ([Descricao] IS NULL AND @original_Descricao IS NULL)) AND [Data_Registro] = @original_Data_Registro" InsertCommand="INSERT INTO [FaleConosco] ([Nome], [Telefone], [Descricao], [Data_Registro]) VALUES (@Nome, @Telefone, @Descricao, @Data_Registro)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [FaleConosco]" UpdateCommand="UPDATE [FaleConosco] SET [Telefone] = @Telefone, [Descricao] = @Descricao, [Data_Registro] = @Data_Registro WHERE [Nome] = @original_Nome AND [Telefone] = @original_Telefone AND (([Descricao] = @original_Descricao) OR ([Descricao] IS NULL AND @original_Descricao IS NULL)) AND [Data_Registro] = @original_Data_Registro">
            <DeleteParameters>
                <asp:Parameter Name="original_Nome" Type="String" />
                <asp:Parameter Name="original_Telefone" Type="String" />
                <asp:Parameter Name="original_Descricao" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Data_Registro" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Nome" PropertyName="SelectedValue" Type="String" />
                <asp:Parameter Name="Telefone" Type="String" />
                <asp:Parameter Name="Descricao" Type="String" />
                <asp:Parameter DbType="Date" Name="Data_Registro" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Telefone" Type="String" />
                <asp:Parameter Name="Descricao" Type="String" />
                <asp:Parameter DbType="Date" Name="Data_Registro" />
                <asp:Parameter Name="original_Nome" Type="String" />
                <asp:Parameter Name="original_Telefone" Type="String" />
                <asp:Parameter Name="original_Descricao" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Data_Registro" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />

                <a href="https://www.exemplo.com">
    <img src="https://th.bing.com/th/id/OIP.W8wrr8KX3Yetxdbf6d26nwHaCc?w=272&h=115&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3" 
        alt="Descrição da imagem">
</a><br />
      <asp:Label ID="lblConfirmacao" runat="server" ForeColor="Green" />
            <br />
            <br />

               <p><strong>O que são?</strong></p>

<p>Heróis das Ruas são pessoas comuns, como garis, catadores e voluntários, que ajudam a melhorar a comunidade com dedicação, mesmo sem reconhecimento. Eles tornam o bairro mais limpo, seguro e acolhedor.</p>

<p><strong>Para que servem?</strong></p>

<p>Os heróis das Ruas melhoram a qualidade de vida da comunidade, mantendo o ambiente limpo, seguro e unido. Suas ações mostram que atitudes simples e solidárias podem transformar o lugar onde vivemos e inspirar outros a ajudar também.

Exs de iniciativas e instituições:</p>

<p>O Blog da BRK Ambiental (Saneamento em Pauta), promove a educação ambiental e o saneamento básico no Brasil. Traz conteúdos sobre água, esgoto, sustentabilidade e dicas para o consumo consciente, além de divulgar ações da empresa.

Pimp My Carroça: É um projeto social criado pelo artista Mundano que valoriza catadores de recicláveis, reformando carroças e oferecendo apoio como saúde e educação. A iniciativa destaca a importância desses profissionais para o meio ambiente e os reconhece como heróis invisíveis.
            </p>
            <p>

                            <a href="https://www.exemplo.com">
    <img src="https://th.bing.com/th/id/OIP.TgFZf3Dte_7GAHYbXZmlIAHaE7?w=277&h=184&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3" 
        alt="Descrição da imagem">
</a>
            </p>
            <p>
                Um herói do bairro <strong>é uma pessoa comum</strong> que faz a diferença na sua comunidade por meio de ações positivas, mesmo sem buscar fama ou recompensa. Algumas coisas que um herói do bairro pode fazer incluem:

Ajudar vizinhos idosos ou com dificuldades, como carregar compras ou cuidar do jardim.</p>

<p>Organizar mutirões de limpeza, plantio de árvores ou manutenção de áreas públicas.</p>

<p>Proteger crianças no trajeto para a escola, ajudando como um "guarda da rua".</p>

<p>Promover a solidariedade, arrecadando alimentos, roupas ou brinquedos para quem precisa.</p>

<p>Combater injustiças e denunciar situações perigosas ou ilegais para melhorar a segurança do bairro.</p>

<p>Incentivar o esporte ou a cultura, organizando torneios, oficinas ou eventos comunitários.</p>


<p>Essas atitudes mostram que qualquer pessoa pode ser um herói, desde que se preocupe com o bem-estar coletivo e aja com empatia e responsabilidade.
            </p>

                                        <p>

                                        <a href="https://www.exemplo.com">
    <img src="https://th.bing.com/th/id/OIP.tgEDV_evPGXfSZcIHftP6gAAAA?w=199&h=150&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3" 
        alt="Descrição da imagem">
</a>
    
            <p>

    <asp:Button ID="btnHeroisDosLixos0" runat="server" Text="Ver Heróis dos Lixos" CssClass="btn" OnClick="btnHeroisDosLixos_Click" />
            <p>

                &nbsp;</div>

            <p>
                &nbsp;</p>

            &nbsp;<asp:Label ID="lblMensagem" runat="server" ForeColor="Red" />
</div>
        </div>
     </formv>

            </div>
</form>
 
</body>
</html>
