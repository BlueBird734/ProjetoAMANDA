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

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BDFinalAmandaConnectionString %>" DeleteCommand="DELETE FROM [local] WHERE [Bairro] = @original_Bairro AND [Casa] = @original_Casa AND [Lojas] = @original_Lojas AND (([Ruas] = @original_Ruas) OR ([Ruas] IS NULL AND @original_Ruas IS NULL))" InsertCommand="INSERT INTO [local] ([Bairro], [Casa], [Lojas], [Ruas]) VALUES (@Bairro, @Casa, @Lojas, @Ruas)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [local]" UpdateCommand="UPDATE [local] SET [Casa] = @Casa, [Lojas] = @Lojas, [Ruas] = @Ruas WHERE [Bairro] = @original_Bairro AND [Casa] = @original_Casa AND [Lojas] = @original_Lojas AND (([Ruas] = @original_Ruas) OR ([Ruas] IS NULL AND @original_Ruas IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_Bairro" Type="String" />
        <asp:Parameter Name="original_Casa" Type="String" />
        <asp:Parameter Name="original_Lojas" Type="String" />
        <asp:Parameter Name="original_Ruas" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:ControlParameter ControlID="GridView1" Name="Bairro" PropertyName="SelectedValue" Type="String" />
        <asp:Parameter Name="Casa" Type="String" />
        <asp:Parameter Name="Lojas" Type="String" />
        <asp:Parameter Name="Ruas" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Casa" Type="String" />
        <asp:Parameter Name="Lojas" Type="String" />
        <asp:Parameter Name="Ruas" Type="String" />
        <asp:Parameter Name="original_Bairro" Type="String" />
        <asp:Parameter Name="original_Casa" Type="String" />
        <asp:Parameter Name="original_Lojas" Type="String" />
        <asp:Parameter Name="original_Ruas" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:Label ID="lblMensagem" runat="server" ForeColor="Green" />


<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Bairro" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Bairro" HeaderText="Bairro" ReadOnly="True" SortExpression="Bairro" />
        <asp:BoundField DataField="Casa" HeaderText="Casa" SortExpression="Casa" />
        <asp:BoundField DataField="Lojas" HeaderText="Lojas" SortExpression="Lojas" />
        <asp:BoundField DataField="Ruas" HeaderText="Ruas" SortExpression="Ruas" />
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:Label ID="lblMensagem" runat="server" ForeColor="Green" />


        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>



    </form>
</body>
</html>
