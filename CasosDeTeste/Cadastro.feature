Feature: Cadastro de usuário
  Como usuário, quero criar uma conta para acessar os serviços da plataforma.

  Scenario: Cadastro com dados válidos
    Given O usuário acessa a página de cadastro
    When O usuário preenche os campos obrigatórios com nome, e-mail e senha válidos
    And Clica no botão "Criar conta"
    Then O sistema exibe a mensagem "Estamos quase lá... Agradecemos o seu interesse em fazer parte da Lacrei Saúde! Para sua segurança, enviamos um link de verificação para o e-mail cadastrado"
    And O usuário é redirecionado para a página de boas-vindas

  Scenario: Cadastro com e-mail inválido
    Given O usuário acessa a página de cadastro
    When O usuário preenche o campo "E-mail" com um valor inválido
    And Clica no botão "Criar Conta"
    Then O sistema exibe a mensagem de erro "E-mail ou senha incorretos. Esqueceu sua senha? Clique em "Esqueci minha senha" para recuperá-la."

  Scenario: Cadastro sem preencher todos os campos obrigatórios
    Given O usuário acessa a página de cadastro
    When O usuário deixa o campo "Senha" vazio
    And Clica no botão "Cadastrar"
    Then O sistema exibe a mensagem de erro "A confirmação da senha é obrigatória."
