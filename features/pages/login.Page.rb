class LoginPage < SitePrism::Page

    set_url ''
    element :emailField, :xpath, '//*[@id="login-form"]/div[1]/div/input'
    element :passwordField, :xpath, '//*[@id="login-form"]/div[2]/div/input'
    element :loginButton, :xpath, '//*[@id="login-form"]/div[3]/div/input'
    element :alert, :xpath, '/html/body/div[6]/div/div[2]/form/div[1]/div'

    def acesssarConta(email,password)
        emailField.set (email)  
        passwordField.set (password)
        loginButton.click
    end
    
    def validationCheckLog
        expect(alert.text).to eql "O email ou a senha estão errados. Por favor verifique."
    end
    

end