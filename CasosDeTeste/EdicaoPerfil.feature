Feature: Edição do perfil da pessoa usuária
  Como usuário, quero atualizar minhas informações pessoais para manter meus dados atualizados.

  Scenario: Atualização com dados válidos
    Given O usuário está logado e acessa a página de edição de perfil
    When O usuário preenche os campos "Nome" e "Telefone" com valores válidos
    And Clica no botão "Salvar"
    Then O sistema exibe a mensagem "Informações atualizadas com sucesso."

  Scenario: Atualização com campo obrigatório vazio
    Given O usuário está logado e acessa a página de edição de perfil
    When O usuário deixa o campo "Nome" vazio
    And Clica no botão "Salvar"
    Then O sistema exibe a mensagem de erro "O campo Nome é obrigatório."

  Scenario: Atualização com telefone inválido
    Given O usuário está logado e acessa a página de edição de perfil
    When O usuário preenche o campo "Telefone" com um valor inválido
    And Clica no botão "Salvar"
    Then O sistema exibe a mensagem de erro "Telefone inválido. Insira um número válido."
