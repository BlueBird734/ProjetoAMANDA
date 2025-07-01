
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
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                        <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
                        <asp:BoundField DataField="votos" HeaderText="votos" SortExpression="votos" />
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
<br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BDFinalAmandaConnectionString %>" DeleteCommand="DELETE FROM [Votacao] WHERE [Id] = @original_Id AND [Nome] = @original_Nome AND [Descricao] = @original_Descricao AND (([votos] = @original_votos) OR ([votos] IS NULL AND @original_votos IS NULL))" InsertCommand="INSERT INTO [Votacao] ([Id], [Nome], [Descricao], [votos]) VALUES (@Id, @Nome, @Descricao, @votos)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Votacao]" UpdateCommand="UPDATE [Votacao] SET [Nome] = @Nome, [Descricao] = @Descricao, [votos] = @votos WHERE [Id] = @original_Id AND [Nome] = @original_Nome AND [Descricao] = @original_Descricao AND (([votos] = @original_votos) OR ([votos] IS NULL AND @original_votos IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Id" Type="String" />
                        <asp:Parameter Name="original_Nome" Type="String" />
                        <asp:Parameter Name="original_Descricao" Type="String" />
                        <asp:Parameter Name="original_votos" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="String" />
                        <asp:Parameter Name="Nome" Type="String" />
                        <asp:Parameter Name="Descricao" Type="String" />
                        <asp:Parameter Name="votos" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nome" Type="String" />
                        <asp:Parameter Name="Descricao" Type="String" />
                        <asp:Parameter Name="votos" Type="String" />
                        <asp:Parameter Name="original_Id" Type="String" />
                        <asp:Parameter Name="original_Nome" Type="String" />
                        <asp:Parameter Name="original_Descricao" Type="String" />
                        <asp:Parameter Name="original_votos" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
       <br />
<asp:Label ID="lblMensagem" runat="server" ForeColor="Green" />

<asp:Button ID="btnResultado0" runat="server" Text="Ver Resultado" CssClass="btn" OnClick="btnResultado_Click" />

    </form>

</body>
</html>
