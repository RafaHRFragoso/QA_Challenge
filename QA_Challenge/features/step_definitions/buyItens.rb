Quando("o usuário adiciona um item ao carrinho") do
    home.clickLogo  
    buyitens.selectProduct
    buyitens.addToCart
  end

  Quando("realiza passo a passo do processo de compra") do
    buyitens.processPurchase
  end
  
  Então("a compra será realizada com sucesso") do
    buyitens.validatePurchase
  end
  
  Quando("retorna para selecionar mais itens") do
    buyitens.continueShopping     
  end
  
  Quando("o usuário seleicona um novo item na loja") do
    home.clickLogo 
    buyitens.selectnewProduct
    buyitens.addToCart
  end

  Quando("o usuário seleicona um item na loja") do
    home.clickLogo  
    buyitens.selectProduct
  end

  Quando("escolhe a quantidade desejada de itens para adicionar no carrinho") do
    buyitens.fillItemsQuantity
    buyitens.addToCart
  end