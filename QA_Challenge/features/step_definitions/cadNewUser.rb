Dado("que o usuário acesse a tela de Autenticação") do    
    home.accessSignin
    page.assert_text('Authentication')
  end
  
  Quando("submete um email valido para um novo cadastro") do
    authentication.submitNewEmail
    authentication.clickCreateAccount
  end
  
  Quando("preenche o formulario de cadastro") do
    formaccount.checkMrRadio
    formaccount.fillFirstName
    formaccount.fillLastName
    formaccount.fillPassword
    formaccount.selectDate
    formaccount.checkCheckboxes
    formaccount.userAddress
    formaccount.fillPhoneNumber
  end

  Quando("submete o cadastrado") do
    formaccount.clicksubmitButton
  end

  Então("o novo usuário deve ser cadastrado com sucesso") do
    formaccount.validateNewAccess
  end