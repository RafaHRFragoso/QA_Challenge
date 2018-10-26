#language:pt

Funcionalidade: Cadastrar Novo Usuário 

    #Contexto: Página Inicial
    #    Dado que o usuário acesse a página inicial
    #    Então a logo do sistema deve ser exibida
    @home_page        
    Cenario: Cadastrar Novo Usuário         
        Quando o usuário acessa a tela de Sign In
        E submete um email valida para um novo cadastro
        Então o usuário preenche o formulario de cadastro