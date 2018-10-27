#language:pt


@newUser
Funcionalidade: Cadastrar Novo Usuário 

    #Contexto: Página Inicial
    #    Dado que o usuário acesse a página inicial
    #    Então a logo do sistema deve ser exibida
    @home_page        
    Cenario: Cadastrar Novo Usuário         
        Dado que o usuário acesse a tela de Autenticação
        Quando submete um email valido para um novo cadastro
        Quando preenche o formulario de cadastro
        E submete o cadastrado
        Então o novo usuário deve ser cadastrado com sucesso