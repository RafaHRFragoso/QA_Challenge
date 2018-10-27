Quando("o usuário logar com um email e senha previamente cadastrados") do      
    @existEmail = 'qa_challange@example.net'
    @existPasswd = '7p80Nl2d'    
    authentication.loginPass(@existEmail,@existPasswd)
    authentication.clickSignIn
  end

  Então("o sistema deverá autenticar o usuário com sucesso") do
    @existsUser = 'Alyce Kertzmann'
    authentication.validateCommonLogin(@existsUser)
  end

Quando("um usuário que possua ao menos um item no My Wishlis realizar login") do
    @existEmail = 'naomi@example.net'
    @existPasswd = 'Uv2x90Cz'    
    authentication.loginPass(@existEmail,@existPasswd)
    authentication.clickSignIn
  end
  
  Então("o sistema deverá redirecionar o usuário para a tela de My Wishlis") do
    page.assert_text('New wishlist')
  end

Quando("o usuário logar com {string} e {string}") do |email, passwd|
    authentication.loginFail(email,passwd)
    authentication.clickSignIn
  end
  
  Então("o sistema deverá exibir a mensagem {string}") do |alert|
    page.assert_text(alert)
  end

Quando("realizar o logout do sistema") do
    authentication.logoutPass
  end
  
  Então("o usuário deverá ser redirecionado para a homepage") do
    
  end