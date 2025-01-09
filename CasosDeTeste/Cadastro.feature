Feature: Cadastro de usuário
  Como usuário, quero criar uma conta para acessar os serviços da plataforma.

  Scenario: Cadastro com dados válidos
    Given O usuário acessa a página de cadastro
    When O usuário preenche os campos obrigatórios com nome, e-mail e senha válidos
    And Clica no botão "Criar Conta"
    Then O sistema exibe a mensagem "Cadastro realizado com sucesso"
    And O usuário é redirecionado para a página de boas-vindas

  Scenario: Cadastro com e-mail inválido
    Given O usuário acessa a página de cadastro
    When O usuário preenche o campo "E-mail" com um valor inválido
    And Clica no botão "Criar Conta"
    Then O sistema exibe a mensagem de erro "E-mail inválido. Por favor, insira um e-mail válido."

  Scenario: Cadastro sem preencher todos os campos obrigatórios
    Given O usuário acessa a página de cadastro
    When O usuário deixa o campo "Senha" vazio
    And Clica no botão "Criar Conta"
    Then O sistema exibe a mensagem de erro "O campo senha é obrigatório."
