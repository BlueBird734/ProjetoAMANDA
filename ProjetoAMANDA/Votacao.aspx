<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Votacao.aspx.vb" Inherits="Votacao" %>

<!DOCTYPE html>

<html>
<head>
    <title>Vote em seu Herói!</title>
</head>
<body>

    <style>
    body {
        font-family: 'Segoe UI', sans-serif;
        background-color: #f0f2f5;
        margin: 0;
        padding: 20px;
    }

    form {
        max-width: 900px;
        margin: 0 auto;
        background-color: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.05);
    }

    h2 {
        text-align: center;
        color: #2c3e50;
        margin-bottom: 30px;
    }

    .btn, input[type="submit"], input[type="button"] {
        background-color: #3498db;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 15px;
        border-radius: 6px;
        cursor: pointer;
        margin-top: 15px;
        transition: background-color 0.3s ease;
    }

    .btn:hover, input[type="submit"]:hover, input[type="button"]:hover {
        background-color: #2980b9;
    }

    .aspNetDisabled {
        background-color: #ccc !important;
        cursor: not-allowed;
    }

    .gridview {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    .gridview th, .gridview td {
        border: 1px solid #ddd;
        padding: 10px;
        text-align: center;
    }

    .gridview th {
        background-color: #3498db;
        color: white;
    }

    .gridview tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    .gridview tr:hover {
        background-color: #f1f1f1;
    }

    #lblMensagem {
        font-weight: bold;
        display: block;
        margin-top: 20px;
        font-size: 14px;
        text-align: center;
    }
</style>


   <form id="form1" runat="server">
    <h2>Vote em seu Herói Favorito</h2>
    <asp:GridView ID="gridVotacao" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" OnRowCommand="gridVotacao_RowCommand" OnRowDataBound="gridVotacao_RowDataBound">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="ID" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" />
            <asp:BoundField DataField="Descricao" HeaderText="Descrição" />
            <asp:BoundField DataField="Votos" HeaderText="Votos" />
            <asp:ButtonField Text="Votar" CommandName="Votar" ButtonType="Button" />
        </Columns>
    </asp:GridView>

       <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDFinalAmandaConnectionString %>" SelectCommand="SELECT * FROM [FaleConosco]"></asp:SqlDataSource>
<br /><br />
<asp:Label ID="lblMensagem" runat="server" ForeColor="Green" />

<asp:Button ID="btnResultado0" runat="server" Text="Ver Resultado" CssClass="btn" OnClick="btnResultado_Click" />

    </form>

</body>
</html>