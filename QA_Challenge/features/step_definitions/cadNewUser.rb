Quando("o usuário acessa a tela de Sign In") do
    
    home.accessSignin
    page.assert_text('Authentication')
  end
  
  Quando("submete um email valida para um novo cadastro") do
    user_email = Faker::Internet.free_email('QA_Challange')
    puts user_email
    fill_in "email_create", with: user_email
    signin.clickCreateAccount
    page.assert_text('Create an account')
  end
  
  Então("o usuário preenche o formulario de cadastro") do
    formaccount.checkMrRadio
    formaccount.fillFirstName
    formaccount.fillLastName
    formaccount.fillPassword
    formaccount.selectDate
  end