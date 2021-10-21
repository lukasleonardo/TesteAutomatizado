class HomePage < SitePrism::Page

    set_url ''
    element :headline, :xpath, '/html/body/div[6]/div/h1'
    element :userCard, :xpath, '/html/body/div[6]/div/div[1]/h3'

    def validationCheck
        expect(headline.text).to eql "Minha conta"
        expect(userCard.text).to eql "Dados Pessoais"
    end

end