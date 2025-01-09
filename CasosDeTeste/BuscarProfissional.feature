Feature: Busca de profissionais de saúde
  Como usuário, quero encontrar profissionais de saúde para me conectar com facilidade.

  Scenario: Busca por especialidade
    Given O usuário está na página de busca de profissionais
    When O usuário insere "Psicólogo" no campo de busca
    And Clica no botão "Buscar"
    Then O sistema exibe uma lista de profissionais com a especialidade "Psicólogo"

  Scenario: Busca sem resultados
    Given O usuário está na página de busca de profissionais
    When O usuário insere "Especialidade não existente" no campo de busca
    And Clica no botão "Buscar"
    Then O sistema exibe a mensagem "Nenhum profissional encontrado."

  Scenario: Contato com um profissional
    Given O usuário está na página de resultados de busca
    When Clica no botão "Entrar em contato" de um profissional listado
    Then O sistema exibe o formulário de contato
    And O botão "Enviar mensagem" está habilitado
