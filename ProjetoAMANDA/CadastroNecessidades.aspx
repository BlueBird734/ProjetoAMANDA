<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CadastroNecessidades.aspx.vb" Inherits="CadastroNecessidades" %>

<!DOCTYPE html>

<html lang="pt-BR">
<head runat="server">
    <meta charset="utf-8" />
    <title>Cadastro de Necessidades do Bairro</title>
    
</head>
<body>

    <style>
    body {
        font-family: 'Segoe UI', sans-serif;
        background-color: #f2f5f7;
        margin: 0;
        padding: 20px;
    }

    form {
        max-width: 700px;
        margin: auto;
        background: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }

    h2 {
        text-align: center;
        color: #2c3e50;
        margin-bottom: 30px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: 600;
        color: #34495e;
    }

    .form-control {
        width: 100%;
        padding: 10px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 6px;
        box-sizing: border-box;
        background-color: #fdfdfd;
    }

    .form-control:focus {
        border-color: #3498db;
        outline: none;
        box-shadow: 0 0 5px rgba(52,152,219,0.5);
    }

    .btn {
        background-color: #3498db;
        color: white;
        border: none;
        padding: 12px 25px;
        font-size: 16px;
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .btn:hover {
        background-color: #2980b9;
    }

    #lblMensagem {
        font-weight: bold;
        font-size: 14px;
        margin-top: 15px;
        display: block;
        text-align: center;
    }
</style>


    <form id="form1" runat="server">
        <h2>Cadastro de Necessidades do Bairro</h2>

        <div class="form-group">
            <label>Nome do Morador:</label>
            <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" Width="270px" />
        </div>

        <div class="form-group">
            <label>Categoria de Demanda:</label>
            <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="form-control" Width="294px">
                <asp:ListItem Text="Selecione uma categoria" Value="" />
                <asp:ListItem Text="Infraestrutura" />
                <asp:ListItem Text="Segurança" />
                <asp:ListItem Text="Limpeza" />
                <asp:ListItem Text="Evento Social" />
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label>Descrição da Demanda:</label>
            <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control" Height="182px" Width="276px" />
        </div>

        <div class="form-group">
    <label>Adicione o Local:</label>
</div>
        Bairro<br />
        <asp:TextBox ID="txtBairro0" runat="server" CssClass="form-control" Width="276px" />
        <br />
        <br />
        Casa<br />
        <asp:TextBox ID="txtCasa0" runat="server" CssClass="form-control" Width="275px" />
        <br />
        <br />
        Lojas<br />
        <asp:TextBox ID="txtLojas0" runat="server" CssClass="form-control" Width="273px" />
        <br />
        <br />
        Ruas<br />
        <asp:TextBox ID="txtRuas0" runat="server" CssClass="form-control" Width="272px" />
        <br />
        <br />

<br />

        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar Demanda" CssClass="btn" OnClick="btnRegistrar_Click" />

        <br /><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:Label ID="lblMensagem" runat="server" ForeColor="Green" />


        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>



    </form>
</body>
</html>