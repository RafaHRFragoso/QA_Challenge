#language:pt

@buyitens @home_page
Funcionalidade: Realizar Compra de Itens 

    Contexto: Tela de Autenticação
        Dado que o usuário acesse a tela de Autenticação
        Quando o usuário logar com um email e senha previamente cadastrados
        
    @simplepurchase        
    Cenario: Comprar um item na loja         
        Quando o usuário adiciona um item ao carrinho
        E realiza passo a passo do processo de compra
        Então a compra será realizada com sucesso
       
    @buydiferentitems
    Cenario: Comprar dois itens diferentes na loja         
        Quando o usuário adiciona um item ao carrinho
        E retorna para selecionar mais itens
        Quando o usuário seleicona um novo item na loja
        E realiza passo a passo do processo de compra
        Então a compra será realizada com sucesso

    @buymultipleitems 
        Cenario: Comprar duas unidades de um item na loja         
        Quando o usuário seleicona um item na loja
        E escolhe a quantidade desejada de itens para adicionar no carrinho 
        E realiza passo a passo do processo de compra
        Então a compra será realizada com sucesso