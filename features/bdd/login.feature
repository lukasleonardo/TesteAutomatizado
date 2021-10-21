# language: pt

Funcionalidade: Logar ao Site de Ecommerce
Para realizar o login no sistema
O usuário do sistema
Quer acessar sua conta pessoal

Contexto:
    Dado que o usuario queira se conectar ao sistema

@cenario_sucesso
Cenario: login bem sucedido
Quando o usuario inserir uma credencial valida
Entao deve ser efetuado o login com sucesso


@cenario_falha
Cenario: login mal sucedido
Quando o usuario inserir credenciais invalidas ou não inserir nada
Entao deve ser emitido o alerta

