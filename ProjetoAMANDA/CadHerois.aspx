<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CadHerois.aspx.vb" Inherits="CadHerois" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <table style="width:100%;">
                <tr>
                    <td>Cpf</td>
                    <td>
                        <asp:TextBox ID="txtCpf" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Nome</td>
                    <td>
                        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>DataNascimento</td>
                    <td>
                        <asp:TextBox ID="txtDataNasc" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Telefone</td>
                    <td>
                        <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Endereço</td>
                    <td>
                        <asp:TextBox ID="txtEndereco" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>História</td>
                    <td>
                        <asp:TextBox ID="txtHistoria" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCadastrar" runat="server" Text="Gravar Herói" Width="158px" />
                    </td>
                    <td>
                        <asp:Button ID="btnLimpar" runat="server" Text="Limpar" Width="157px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BDFinalAmandaConnectionString %>" DeleteCommand="DELETE FROM [Herois] WHERE [CPF] = @original_CPF AND [Nome] = @original_Nome AND [Data_nascimento] = @original_Data_nascimento AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Telefone] = @original_Telefone) OR ([Telefone] IS NULL AND @original_Telefone IS NULL)) AND [Endereco] = @original_Endereco AND (([Historia] = @original_Historia) OR ([Historia] IS NULL AND @original_Historia IS NULL))" InsertCommand="INSERT INTO [Herois] ([CPF], [Nome], [Data_nascimento], [Email], [Telefone], [Endereco], [Historia]) VALUES (@CPF, @Nome, @Data_nascimento, @Email, @Telefone, @Endereco, @Historia)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:BDFinalAmandaConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Herois]" UpdateCommand="UPDATE [Herois] SET [Nome] = @Nome, [Data_nascimento] = @Data_nascimento, [Email] = @Email, [Telefone] = @Telefone, [Endereco] = @Endereco, [Historia] = @Historia WHERE [CPF] = @original_CPF AND [Nome] = @original_Nome AND [Data_nascimento] = @original_Data_nascimento AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Telefone] = @original_Telefone) OR ([Telefone] IS NULL AND @original_Telefone IS NULL)) AND [Endereco] = @original_Endereco AND (([Historia] = @original_Historia) OR ([Historia] IS NULL AND @original_Historia IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_CPF" Type="String" />
                    <asp:Parameter Name="original_Nome" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_Data_nascimento" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Telefone" Type="String" />
                    <asp:Parameter Name="original_Endereco" Type="String" />
                    <asp:Parameter Name="original_Historia" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtCpf" Name="CPF" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtNome" Name="Nome" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtDataNasc" DbType="Date" Name="Data_nascimento" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtEmail" Name="Email" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtTelefone" Name="Telefone" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtEndereco" Name="Endereco" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtHistoria" Name="Historia" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter DbType="Date" Name="Data_nascimento" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Telefone" Type="String" />
                    <asp:Parameter Name="Endereco" Type="String" />
                    <asp:Parameter Name="Historia" Type="String" />
                    <asp:Parameter Name="original_CPF" Type="String" />
                    <asp:Parameter Name="original_Nome" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_Data_nascimento" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Telefone" Type="String" />
                    <asp:Parameter Name="original_Endereco" Type="String" />
                    <asp:Parameter Name="original_Historia" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CPF" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="CPF" HeaderText="CPF" ReadOnly="True" SortExpression="CPF" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="Data_nascimento" HeaderText="Data_nascimento" SortExpression="Data_nascimento" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone" />
                    <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco" />
                    <asp:BoundField DataField="Historia" HeaderText="Historia" SortExpression="Historia" />
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
        </div>
    </form>
</body>
</html>
