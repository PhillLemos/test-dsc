#language: pt


Funcionalidade: Login
    Para que eu possa gerenciar as funções do descomplique seu consultório
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com meu email e senha
    
    @login_happy
    Cenario: Login
      Quando submeto meu usuario e senha 'admin@bigode.com' e 'teste123'
      Então devo ser direcionado a área logada
      E devo ver 'Médicos' na área logada
      
    Cenario: Senhas divergentes
     Quando submeto login e senha divergentes 'admin@bigode' e 'testeerrado'
     Então não devo ser autenticado
     E devo ver a mensagem 'Oops, usuário ou senha incorretos'

    Cenario: Usuario nao cadastrado
     Quando submeto login com 'teste@errado.com' e 'teste123'
     Entao não devo ser autenticado
     E devo ver a mensagem 'Oops, usuário ou senha incorretos'

    Cenario: Email não informado
     Quando submeto login com '' e 'teste123'
     Então não devo ser autenticado
     E devo ver mensagem 'Oops, Informe seu email'

    Cenario: Senha não informada
     Quando eu faço o login com 'admin@bigode.com' e ''
     Entao não devo ser autenticado
     E devo ver mensagem 'Oops,informe a senha'



