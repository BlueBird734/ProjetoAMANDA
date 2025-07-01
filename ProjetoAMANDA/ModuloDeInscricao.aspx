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
        <br />

<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Nome" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Nome" HeaderText="Nome" ReadOnly="True" SortExpression="Nome" />
        <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BDFinalAmandaConnectionString %>" DeleteCommand="DELETE FROM [Inscricao] WHERE [Nome] = @original_Nome AND (([Descricao] = @original_Descricao) OR ([Descricao] IS NULL AND @original_Descricao IS NULL))" InsertCommand="INSERT INTO [Inscricao] ([Nome], [Descricao]) VALUES (@Nome, @Descricao)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Inscricao]" UpdateCommand="UPDATE [Inscricao] SET [Descricao] = @Descricao WHERE [Nome] = @original_Nome AND (([Descricao] = @original_Descricao) OR ([Descricao] IS NULL AND @original_Descricao IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Nome" Type="String" />
            <asp:Parameter Name="original_Descricao" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="GridView1" Name="Nome" PropertyName="SelectedValue" Type="String" />
            <asp:Parameter Name="Descricao" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Descricao" Type="String" />
            <asp:Parameter Name="original_Nome" Type="String" />
            <asp:Parameter Name="original_Descricao" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

<br />
        <asp:Label ID="lblMensagem" runat="server" ForeColor="Green" />

        <asp:Button ID="btnVotacao0" runat="server" Text="Ver Votação" CssClass="btn" OnClick="btnVotacao_Click" />

    </form>
</body>
</html>
