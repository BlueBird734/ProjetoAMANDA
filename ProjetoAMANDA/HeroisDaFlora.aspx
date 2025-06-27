<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HeroisDaFlora.aspx.vb" Inherits="HeroisDaFlora" %>

<!DOCTYPE html>

<html lang="pt-BR">
<head runat="server">
    <meta charset="utf-8" />
    <title>Heróis da Flora</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e8f5e9;
            margin: 0;
            padding: 40px;
        }

        .container {
            max-width: 900px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 0 12px rgba(0, 0, 0, 0.1);
            height: 1919px;
            width: 1210px;
        }

        .titulo {
            text-align: center;
            font-size: 36px;
            font-weight: bold;
            color: #2e7d32;
            margin-bottom: 30px;
        }

        .texto {
            font-size: 18px;
            color: #333333;
            margin-bottom: 30px;
            line-height: 1.8;
            text-align: justify;
        }
        .input {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="titulo">Heróis das Floras</div>

            <div class="texto">
                Ser um herói da flora é compreender o papel vital que as plantas exercem no equilíbrio do planeta. 
                Ao preservar e cultivar áreas verdes, estamos promovendo a purificação do ar, a regulação da temperatura 
                e a proteção da biodiversidade. A flora é responsável por oferecer abrigo, alimento e oxigênio, sendo essencial 
                para todas as formas de vida. Proteger a vegetação não é apenas um ato ambiental, mas uma responsabilidade social e 
                ética com as futuras gerações. Ao participar de projetos de reflorestamento e preservação, você se torna parte ativa na 
                reconstrução de ecossistemas naturais e na promoção da vida saudável em nosso planeta.
            </div>

            <a>
                 <img src="https://th.bing.com/th/id/OIP.wvsux2uoCLna0Jfs4YehMAHaE7?w=297&h=198&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3" 
        alt="Descrição da imagem" style="width: 712px; height: 440px; margin-left: 101px; margin-right: 0px;">

                                </a>

            <div class="texto">
                As ações dos heróis das floras vão além do plantio. Eles promovem educação ambiental, conscientizam comunidades e incentivam
                práticas sustentáveis no dia a dia. Esses voluntários muitas vezes se dedicam aos fins de semana para plantar mudas, recuperar
                matas ciliares e revitalizar áreas urbanas degradadas. Cada árvore plantada é um símbolo de resistência às mudanças climáticas 
                e à poluição desenfreada. Auxiliar no crescimento da flora significa contribuir diretamente para a saúde do solo, da água e da 
                fauna, criando um ciclo positivo de regeneração. Heróis das floras também inspiram crianças e jovens a amar e cuidar da natureza.
               

                       <a>                       
    <img src="https://th.bing.com/th/id/OIP.qajtZQSK_qK6lHnzQKBB6AHaFf?w=234&h=187&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3" 
        alt="Descrição da imagem" style="width: 850px; margin-left: 48px; height: 509px; margin-right: 0px; margin-top: 69px;"></a></div>

                       <a>                       
   </a><div class="texto">
                Se você sente o desejo de fazer a diferença, esta é a sua chance de se tornar um herói da flora. Procure iniciativas na sua cidade,
                ONGs ambientais ou organize mutirões em praças e parques locais. Com apenas algumas horas de dedicação por mês, você pode plantar 
                esperança, literalmente. A natureza retribui com sombra, alimentos, beleza e equilíbrio ecológico. Além disso, o trabalho voluntário
                proporciona bem-estar emocional, conexão com outras pessoas e sentimento de propósito. Junte-se a essa missão verde e ajude a transformar 
                o mundo com suas mãos, uma árvore por vez. Seja o exemplo que o planeta precisa.
                <br />
                <br />

                   <div class="texto">
    ♦Nos conte sobre a sua trajetória!♦
</div>


         <label class="label">Fale Conosco</label>
        <div class="control">
        <asp:Panel ID="pnlFormulario2" runat="server" Width="1306px" >
        <!-- Formulário 1 -->
        <asp:TextBox ID="TextBox2" runat="server" CssClass="input" placeholder="Digite sua resposta" Width="729px" Height="27px"></asp:TextBox> &nbsp;<asp:Button ID="btnFaleConosco2" runat="server" OnClick="btnFaleConosco_Click" Text="Enviar" />
            <br />
            <asp:Label ID="Label3" runat="server" ForeColor="Green">
             </asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnHeroisDaFauna1" runat="server" OnClick="btnHeroisDaFauna_Click" Text="Ir para Heróis da Fauna" />
            <br />
            </asp:Panel>
    </div>



            </div>
        </div>   


    <div class="field">

    
</form>
</body>
</html>