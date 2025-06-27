<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Resultado.aspx.vb" Inherits="Resultado" %>

<!DOCTYPE html>

<html lang="pt-BR">
<head runat="server">
    <meta charset="utf-8" />
    <title>Ranking dos Heróis</title>
        
    </head>
&nbsp;<body><style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f9fa;
        margin: 0;
        padding: 20px;
    }

    h2 {
        color: #2c3e50;
        text-align: center;
        margin-bottom: 30px;
    }

    form {
        max-width: 700px;
        margin: 0 auto;
        background-color: #fff;
        border: 1px solid #ddd;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.05);
    }

    label {
        display: block;
        margin-bottom: 10px;
        color: #34495e;
        font-size: 16px;
    }

    .descricao {
        margin-top: 15px;
        font-size: 15px;
        color: #555;
        background: #eef2f5;
        padding: 15px;
        border-radius: 6px;
    }

    .btn {
        margin-top: 20px;
        background-color: #3498db;
        border: none;
        color: white;
        padding: 12px 25px;
        font-size: 16px;
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .btn:hover {
        background-color: #2980b9;
    }
</style><form id="form1" runat="server">
    <h2>Heróis mais Votados</h2>

    <div>
        <label>♦Nome do(a) vencedor(a):♦</label>
    </div>

    <div>
        <label><strong>Maria</strong></label>
    </div>

    <div>
        <label>Descrição:</label>
    </div>

    <div class="descricao">
        Maria venceu, pois passou longos meses se dedicando apenas a ajudar a salvar as vidas de cachorros abandonados e animais indefesos.
    </div>

    <asp:Label ID="lblResultado" runat="server" />

    <asp:Button ID="btnCadastroNecessidades0" runat="server" Text="Ver Cadastro de Necessidades" CssClass="btn" OnClick="btnCadastroNecessidades_Click" />


     </form>
</body>
</html>
