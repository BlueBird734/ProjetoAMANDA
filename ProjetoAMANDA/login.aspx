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

<br />
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BDFinalAmandaConnectionString %>" DeleteCommand="DELETE FROM [usuario] WHERE [Nome] = @original_Nome AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Senha] = @original_Senha) OR ([Senha] IS NULL AND @original_Senha IS NULL))" InsertCommand="INSERT INTO [usuario] ([Email], [Senha], [Nome]) VALUES (@Email, @Senha, @Nome)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [usuario]" UpdateCommand="UPDATE [usuario] SET [Email] = @Email, [Senha] = @Senha WHERE [Nome] = @original_Nome AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Senha] = @original_Senha) OR ([Senha] IS NULL AND @original_Senha IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_Nome" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
        <asp:Parameter Name="original_Senha" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:ControlParameter ControlID="txtEmail" Name="Email" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="txtSenha" Name="Senha" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="txtNome" Name="Nome" PropertyName="Text" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Senha" Type="String" />
        <asp:Parameter Name="original_Nome" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
        <asp:Parameter Name="original_Senha" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Nome" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Senha" HeaderText="Senha" SortExpression="Senha" />
        <asp:BoundField DataField="Nome" HeaderText="Nome" ReadOnly="True" SortExpression="Nome" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BDFinalAmandaConnectionString %>" DeleteCommand="DELETE FROM [usuario] WHERE [Nome] = @original_Nome AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Senha] = @original_Senha) OR ([Senha] IS NULL AND @original_Senha IS NULL))" InsertCommand="INSERT INTO [usuario] ([Email], [Senha], [Nome]) VALUES (@Email, @Senha, @Nome)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Email, Senha, Nome FROM usuario" UpdateCommand="UPDATE [usuario] SET [Email] = @Email, [Senha] = @Senha WHERE [Nome] = @original_Nome AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Senha] = @original_Senha) OR ([Senha] IS NULL AND @original_Senha IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_Nome" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
        <asp:Parameter Name="original_Senha" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:ControlParameter ControlID="GridView1" Name="Email" PropertyName="SelectedValue" Type="String" />
        <asp:Parameter Name="Senha" Type="String" />
        <asp:Parameter Name="Nome" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Senha" Type="String" />
        <asp:Parameter Name="original_Nome" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
        <asp:Parameter Name="original_Senha" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</div>

        </form>
    </div>

</body>
</html>
