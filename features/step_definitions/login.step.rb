#Contexto
Dado('que o usuario queira se conectar ao sistema') do
    login.load
end


#Cenario de sucesso  
Quando('o usuario inserir uma credencial valida') do
    login.acesssarConta(CREDENTIAL[:userValido][:email], CREDENTIAL[:userValido][:password])
end
  
Entao('deve ser efetuado o login com sucesso') do
    home.validationCheck
end
  
#Cenário de Falha
Quando('o usuario inserir credenciais invalidas ou não inserir nada') do
    login.acesssarConta(CREDENTIAL[:userInvUm][:email], CREDENTIAL[:userInvUm][:password])
end
  
Entao('deve ser emitido o alerta') do
    login.validationCheckLog
end