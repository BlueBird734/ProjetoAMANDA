<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8" />
    <title>Login</title>

    <!-- Bulma CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.9.4/css/bulma.min.css" />

    <!-- Estilo personalizado -->
    <style>
        html, body {
            height: 100%;
            margin: 0;
            background-color: #e0f7fa; /* azul claro */
            font-family: 'Segoe UI', sans-serif;
        }

        .login-wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
        }

        .login-box {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        .login-title {
            font-size: 2rem;
            font-weight: bold;
            text-align: center;
            color: #007BFF;
            margin-bottom: 1.5rem;
        }

        .button.is-primary {
            background-color: #007BFF;
            border-color: #007BFF;
            top: 4px;
            left: -4px;
        }

        .button.is-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="login-wrapper">
        <form id="form1" runat="server" class="login-box box">
            <div class="login-title">Login</div>

            <div class="field">
                <label class="label">Nome</label>
                <div class="control">
                    <asp:TextBox ID="txtNome" runat="server" CssClass="input" placeholder="Digite seu nome"></asp:TextBox>
                </div>
            </div>

            <div class="field">
                <label class="label">Email</label>
                <div class="control">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="input" TextMode="Email" placeholder="Digite seu email"></asp:TextBox>
                </div>
            </div>

            <div class="field">
                <label class="label">Senha</label>
                <div class="control">
                    <asp:TextBox ID="txtSenha" runat="server" CssClass="input" TextMode="Password" placeholder="Digite sua senha"></asp:TextBox>
                </div>
            </div>

            <div class="field mt-4">
                <div class="control">
                    <asp:Button ID="btnEnviar" runat="server" Text="Enviar" CssClass="button is-primary is-fullwidth" OnClick="btnEnviar_Click" />
                </div>
            </div>

            <div class="field">
    <asp:Label ID="lblMensagem" runat="server" ForeColor="Red" />
</div>

        </form>
    </div>

</body>
</html>