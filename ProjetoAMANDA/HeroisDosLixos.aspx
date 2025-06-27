<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HeroisDosLixos.aspx.vb" Inherits="HeroisDosLixos" %>

<!DOCTYPE html>

<html lang="pt-BR">
<head runat="server">
    <meta charset="utf-8" />
    <title>Heróis dos Lixos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f8e9;
            margin: 0;
            padding: 40px;
            height: 2371px;
        }

        .container {
            max-width: 9000px;
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
            color: #33691e;
            margin-bottom: 30px;
        }

        .texto {
            font-size: 18px;
            color: #333;
            margin-bottom: 30px;
            line-height: 1.8;
            text-align: justify;
        }
        #form1 {
            height: 2097px;
            width: 1336px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="titulo">Heróis dos Lixos</div>

            <div class="texto">
                A limpeza das ruas é uma ação essencial para manter o equilíbrio urbano e a saúde pública. O acúmulo de lixo atrai pragas, gera mau cheiro e contamina o solo e a água, afetando diretamente o bem-estar da população. Quando mantemos os espaços públicos limpos, contribuímos para uma cidade mais organizada, segura e agradável para todos. Essa atitude também evita entupimentos em bueiros, reduzindo os riscos de alagamentos e doenças. Pequenos gestos como descartar corretamente o lixo e participar de mutirões de limpeza fazem grande diferença no cotidiano das comunidades.
            </div>

                                <a href="https://www.exemplo.com">
                                    <img src="https://images.adsttc.com/media/images/516c/0eb5/b3fc/4bc7/f900/0090/newsletter/lixo-desfiles-comlurb.jpg?1366036147" 
        alt="Descrição da imagem" style="width: 901px; height: 440px; margin-left: 101px">

                                </a>
            <div class="texto">
                Cuidar do lixo é cuidar do meio ambiente. Ao recolher resíduos das ruas, estamos evitando que eles cheguem aos rios, mares e áreas verdes, onde causariam sérios danos à fauna e à flora. A poluição provocada pelo descarte incorreto compromete ecossistemas inteiros e acelera as mudanças climáticas. Os heróis dos lixos atuam como guardiões do planeta, retirando toneladas de resíduos que poderiam permanecer no ambiente por décadas. Com essas ações, eles não apenas preservam a natureza, mas também inspiram outras pessoas a adotarem práticas sustentáveis e mais conscientes no dia a dia.
            </div>

                                    <a href="https://www.exemplo.com">
    <img src="https://ogimg.infoglobo.com.br/in/15668742-136-451/FT1086A/652/2015032283636.jpg" 
        alt="Descrição da imagem" style="width: 1145px; margin-left: 48px">
</a>

            <div class="texto">
                Ser voluntário na causa da limpeza urbana é um ato de cidadania e amor ao próximo. Além de promover um ambiente mais limpo e saudável, o trabalho voluntário fortalece o senso de comunidade, melhora a autoestima e oferece um propósito transformador. Ao participar dessas ações, você estará contribuindo para um planeta mais justo e equilibrado, onde todos possam viver melhor. Seja em grupos organizados, em escolas ou individualmente, qualquer pessoa pode se tornar um herói dos lixos. A mudança começa com a decisão de agir. Venha fazer parte desse movimento de esperança e renovação.
            </div>

            <div class="texto">
    ♦Nos conte sobre a sua trajetória!♦
</div>

                 <label class="label">Fale Conosco</label>
    <div class="control">
    <asp:Panel ID="pnlFormulario2" runat="server" Width="1306px" >
    <!-- Formulário 1 -->
    <asp:TextBox ID="TextBox2" runat="server" CssClass="input" placeholder="Digite sua resposta" Width="721px"></asp:TextBox> &nbsp;<asp:Label ID="Label2" runat="server" ForeColor="Green">
         </asp:Label>
        <asp:Button ID="btnFaleConosco1" runat="server" OnClick="btnFaleConosco_Click" Text="Enviar" />
        <br />
        <asp:Button ID="btnHeroisDaFlora1" runat="server" OnClick="btnHeroisDaFlora_Click" Text="Ver Heróis da Flora" />
        </asp:Panel>
</div>

        </div>
    </div>   


<div class="field">
                
</div>

</form>
</body>
</html>