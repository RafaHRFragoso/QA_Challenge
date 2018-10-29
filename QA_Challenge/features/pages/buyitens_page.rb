class BuyItensPage < SitePrism::Page
    
    
    #element :searchbox, '#searchbox'
    element :product, 'a.product-name:first-child'
    element :submitcart, 'button[name="Submit"]'
    element :checkoutButton, 'a[title="Proceed to checkout"]'
    element :shoppingcartButton, '.btn-default.standard-checkout.button-medium'
    element :checkoutAddress, 'button[name="processAddress"]'
    element :checkoutShipping, 'button[name="processCarrier"]'
    element :termsCheck, '#cgv'
    element :paymentBank, '.bankwire'
    element :paymentCheck, '.cheque'
    element :confirmorderButton, 'button.button.btn.btn-default.button-medium'
    element :nameUser, '.account'
    element :orderHistory, 'a[title="Orders"]'
    element :continueshopButton, '.continue'
    element :quantityItensField, '#quantity_wanted'

    def selectProduct
        within("ul#homefeatured li:first-child") do
            product.click
        end                 
    end

    def selectnewProduct        
        within("ul#homefeatured li:nth-child(2)") do
            product.click
        end                 
    end

    def addToCart
        submitcart.click        
        page.assert_text('Product successfully added to your shopping cart') 
        checkoutButton.click  
        page.assert_text('Shopping-cart summary')
    end

    def processPurchase
        price = page.find('#total_price')
        $total_price = price.text
        @total_price = $total_price
        shoppingcartButton.click  
        page.assert_text('Addresses')
        checkoutAddress.click
        page.assert_text('Shipping')
        termsCheck.check
        checkoutShipping.click
        page.assert_text('Please choose your payment method')
        paymentBank.click
        page.assert_text('Order summary')
        confirmorderButton.click
        page.assert_text('Your order on My Store is complete.')      
    end

    def validatePurchase
        t = Time.now
        @currentDay = t.strftime("%m/%d/%Y")     
        nameUser.click
        orderHistory.click
        page.assert_text('Order history')
        page.assert_text($total_price)
        page.assert_text(@currentDay)
    end

    def continueShopping
        click_link 'Continue shopping'
    end

    def fillItemsQuantity
        @qntt = Faker::Number.between(2, 5)
        quantityItensField.set(@qntt) 
    end
    
end