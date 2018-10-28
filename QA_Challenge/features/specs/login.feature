#language:pt

@login @home_page
Funcionalidade: Realizar Login

    Contexto: Tela de Autenticação
        Dado que o usuário acesse a tela de Autenticação

    @logout
    Cenario: Realizar Login com Sucesso                 
        Quando o usuário logar com um email e senha previamente cadastrados
        Então o sistema deverá autenticar o usuário com sucesso

    @logout
    Cenario: Realizar Login de Usuário com itens no My Wishlis
        Quando um usuário que possua ao menos um item no My Wishlis realizar login    
        Então o sistema deverá redirecionar o usuário para a tela de My Wishlis

    Esquema do Cenario: Tentativa de login
        Quando o usuário logar com "<email>" e "<passwd>"
        Então o sistema deverá exibir a mensagem "<alert>"

        Exemplos:
            | email                    | passwd    | alert                      |
            | qa_challange@example.net | wrongpswd | Authentication failed.     |
            | wrong_email@example.net  | 7p80Nl2d  | Authentication failed.     |
            |                          | 7p80Nl2d  | An email address required. |
            | qa_challange@example.net |           | Password is required.      |
            |                          |           | An email address required. |
            
    @validate_logout
    Cenario: Validar Logout
        Quando o usuário logar com um email e senha previamente cadastrados
        E realizar o logout do sistema
        Então o usuário deverá ser redirecionado para a homepage 