<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ModuloDeInscricao.aspx.vb" Inherits="ModuloDeInscricao" %>

<!DOCTYPE html>

<html lang="pt-BR">
<head runat="server">
    <meta charset="utf-8" />
    <title>Módulo de Inscrição</title>
</head>
<body>

    <style>
    body {
        font-family: 'Segoe UI', sans-serif;
        background-color: #eef1f5;
        margin: 0;
        padding: 20px;
    }

    form {
        max-width: 600px;
        margin: auto;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.06);
    }

    h2 {
        text-align: center;
        color: #2c3e50;
        margin-bottom: 25px;
    }

    input[type="text"],
    textarea,
    .form-control {
        width: 100%;
        padding: 12px;
        font-size: 15px;
        border: 1px solid #ccc;
        border-radius: 6px;
        box-sizing: border-box;
        margin-bottom: 20px;
        background-color: #fdfdfd;
    }

    input[type="text"]:focus,
    textarea:focus {
        border-color: #3498db;
        outline: none;
        box-shadow: 0 0 5px rgba(52,152,219,0.3);
    }

    .btn,
    input[type="submit"],
    input[type="button"],
    asp\:button {
        background-color: #3498db;
        color: white;
        border: none;
        padding: 12px 25px;
        font-size: 16px;
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        margin-top: 10px;
    }

    .btn:hover,
    input[type="submit"]:hover,
    input[type="button"]:hover {
        background-color: #2980b9;
    }

    #lblMensagem {
        font-weight: bold;
        font-size: 14px;
        margin-top: 20px;
        text-align: center;
        display: block;
    }
</style>


    <form runat="server">
        <h2>Indique um Herói!</h2>
        <asp:TextBox ID="txtNomeHeroi" runat="server" Placeholder="Nome do Herói" />
        <br /><br />
        <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine" Placeholder="Por que ele merece?" Rows="4" Columns="50" />
        <br /><br />
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
        <br /><br />
        <asp:Label ID="lblMensagem" runat="server" ForeColor="Green" />

        <asp:Button ID="btnVotacao0" runat="server" Text="Ver Votação" CssClass="btn" OnClick="btnVotacao_Click" />

    </form>
</body>
</html>