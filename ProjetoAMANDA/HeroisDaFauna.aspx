<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HeroisDaFauna.aspx.vb" Inherits="HeroisDaFauna" %>

<!DOCTYPE html>

<html lang="pt-BR">
<head runat="server">
    <meta charset="utf-8" />
    <title>Heróis da Fauna</title>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fcefe3;
            margin: 0;
            padding: 40px;
        }

        .container {
            max-width: 900px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 12px rgba(0, 0, 0, 0.1);
        }

        .titulo {
            text-align: center;
            font-size: 36px;
            font-weight: bold;
            color: #bf360c;
            margin-bottom: 30px;
        }
                .texto {
            font-size: 18px;
            color: #333333;
            margin-bottom: 30px;
            line-height: 1.8;
            text-align: justify;
        }
    .field {
            margin-bottom: 15px;
        }

        textarea {
            padding: 8px;
            box-sizing: border-box;
        }

        .btn {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

        .control {
            color: #000000;
        }
        .auto-style1 {
            font-size: 16px;
        }
        .auto-style2 {
            font-weight: normal;
            font-size: 16px;
        }
        .auto-style3 {
            font-weight: normal;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="titulo">Heróis da Fauna</div>

            <div class="texto">
Proteger os animais de rua é um ato de compaixão, responsabilidade e cidadania. Cães e gatos abandonados enfrentam fome, frio, doenças e maus-tratos diariamente. Muitos deles já foram domesticados e dependem totalmente do ser humano para sobreviver. Ajudar esses animais significa oferecer dignidade, tratamento veterinário e uma nova chance de viver em segurança. Além disso, o cuidado com os animais de rua contribui para a saúde pública, pois evita a proliferação de zoonoses. Ao adotar, alimentar ou apoiar campanhas de castração, cada pessoa se torna parte da solução para um problema social grave.
            
                                                <a href="https://www.exemplo.com">
    <img src="https://th.bing.com/th/id/OIP.B3wstdyUeNlm31a4pHDUFwHaHa?w=183&h=183&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3" 
        alt="Descrição da imagem" style="width: 704px; margin-left: 48px; height: 404px; margin-bottom: 0px; margin-top: 40px;"></a></div>

                                                <a href="https://www.exemplo.com">
    &nbsp;</a><div class="texto">
                Os animais silvestres e de floresta também precisam da nossa atenção. Todos os anos, milhares de espécies perdem seu habitat natural por causa do desmatamento, queimadas e da expansão urbana. Muitos são capturados ilegalmente para tráfico de animais ou mortos em áreas agrícolas. A destruição do meio ambiente impacta diretamente a biodiversidade e o equilíbrio ecológico. Cuidar da fauna é essencial para manter a natureza viva e funcional. Organizações ambientais e voluntários dedicam seu tempo a resgatar, tratar e devolver esses animais à natureza. Preservar suas vidas é preservar a vida de todos nós.
            </div>

                                                            <a href="https://www.exemplo.com">
    <img src="https://th.bing.com/th/id/OIP.KkKXHZV5rOvbJYdXc7fCagHaE9?w=274&h=183&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3"
        alt="Descrição da imagem" style="width: 638px; margin-left: 48px; height: 384px;">
</a>

            <br />
            <br />
            Pessoas que se voluntariam na luta contra o abandono animal são verdadeiros heróis da sociedade. Elas denunciam maus-tratos, resgatam cães e gatos das ruas, acolhem temporariamente em lares e promovem campanhas de adoção responsável. O trabalho voluntário também envolve educação, conscientização e políticas públicas de proteção animal. Muitas vezes, essas ações são feitas com recursos próprios e movidas apenas pelo amor aos animais. Você também pode fazer parte dessa causa: doe ração, ofereça abrigo, compartilhe campanhas ou adote um bichinho. Ser voluntário é transformar dor em esperança, e abandono em cuidado.
            <br />
            <br />
            ♦Nos conte sobre a sua trajetória!♦
            <br />
            <br />
            <label class="label">
            Fale Conosco</label><br />

            <div class="titulo" contextmenu="texto">
&nbsp;<div class="control">
    
    <asp:TextBox ID="TextBox3" runat="server" CssClass="input" placeholder="Digite sua resposta" Width="721px">
 </asp:TextBox> 

    <asp:Button ID="faleConosco" runat="server" Text="Enviar para Fale Conosco" CssClass="btn" OnClick="btnModuloDeInscricao_Click" />
    

                    <br />
                    <br class="auto-style1" />
                    <span class="auto-style2">Se interessou? realize o cadastro para ser um desses honrados Heróis!</span><span class="auto-style1"><br />
                    </span>
    
</div>
            <h2 class="auto-style3">Voluntário a ser Herói</h2>
                <p>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CadHerois.aspx">Cadastro de Heróis</asp:HyperLink>
    <asp:Panel ID="pnlFormulario2" runat="server" Width="1306px" >
    <!-- Formulário 1 -->

        <br />
        </asp:Panel>

    <asp:Button ID="btnModuloDeIncricao0" runat="server" Text="Ver Módulo de Inscrição" CssClass="btn" OnClick="btnModuloDeInscricao_Click" />
    

            </div>

         </div>
</form>
</body>
</html>

