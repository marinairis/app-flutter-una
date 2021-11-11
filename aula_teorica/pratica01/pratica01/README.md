    #Exercício

    - Assista ao vídeo: https://www.youtube.com/watch?v=YxYrdzkqCNE. Pratique os 
        comandos apresentados no vídeo.

    ##Anotações:

    ###EMMET:
        O Emmet ultiliza sintaxe similar aos **seltores CSS** para **descrever e gerar** o  posicinamento dos **elementos e atributos** do HTML.
    
    - Como iniciar o Emmet:
    1. Iniciando
        ! ou html:3
    
    2. Filhos
        div>ul>li (depois a tecla TAB) irá gerar o seguinte
            <div>
                <ul>
                    <li></li>
                </ul>
            </div>
     **o sinal de >, significa q a o li vai ficar dentro do ul q vai ficar dentro da div
        O QUE VEM A DIREITA ESTARÁ DENTRO DO QUE ESTÁ A ESQUERDA
    
    3. Irmãos
        div+ul>li+p c
            <div></div>
            <ul>
                <li></li>
                <p></p>
            </ul>
    **o sinal de +, significa que a div e o ul estão no mesmo nível hierarquico
        O QUE IRÁ FICAR NO MESMO NÍVEL HIERARQUICO

    4. Escalar Atributos:
        div^ul>li^p(depois a tecla TAB) irá gerar o seguinte
        <div></div>
        <ul>
            <li></li>
        </ul>
        <p></p>
    **o sinal de ^, do segundo parametro, significa q o p irá ficar no mesmo nível que o ul
        O SEGUNDO PARAMETRO FICA NO MEMSO NÍVEL Q O ANTERIOR, CADA ^ VOLTA UM NÍVEL
    
    5. Multiplicações:
        ul*2>li*3 (depois a tecla TAB) irá gerar o seguinte
        <ul>
            <li></li>
            <li></li>
            <li></li>
        </ul>
        <ul>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    **o sinla de *, siginifica a quantidade de parâmetros que você quer
        A QUATIDADE DE PARÂMETROS NECESSÁRIA

    6. Agrupamentos:
    div>(ul>li*3>a)+div (depois a tecla TAB) irá gerar o seguinte
        <div>
            <ul>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
            </ul>
        </div>
        <div></div>
    **o sinal de (), irá agrupar a estrutura
        AGRUPAMENTOS DE ESTRUTURAS

    7. Texto:
    div>p>{lorem}(ul>li*3>a{clique})+div (depois a tecla TAB) irá gerar o seguinte
        <div>
            <p>
                lorem
                <ul>
                    <li><a href="">clique</a></li>
                    <li><a href="">clique</a></li>
                    <li><a href="">clique</a></li>
                </ul>
                <div></div>
            </p>
        </div>
    **o sinal de {}, irá adicionar o texto
        ADICIONA TEXTO
    
    8. Operadores de Atributo
        a. Id e Classe
            div#header => <div id="header"></div>
            div.page => <div class="page"></div>
            div.conteiner => <div class="conteiner"></div>
        **o sinal de # irá referenciar o ID, e o . irá referenciar a Class
            # => ID E . => CLASS
        
        b. Outros
            a[href=# title=descricao]*4
                <a href="#" title="descicao"></a>
        **o sinal[] ajuda a criar as outras propriedades

        c. Numéricos
            25:00 parei no video



