Feature: Busca de profissionais de saúde
  Como usuário, quero encontrar profissionais de saúde para me conectar com facilidade.

  Scenario: Busca por sexualidade
    Given O usuário está na página de busca de profissionais
    When O usuário insere "Médico gay" no campo de busca
    And Clica no botão "Buscar"
    Then O sistema exibe uma lista de profissionais com a sexualidade "Gay"

  Scenario: Busca sem resultados
    Given O usuário está na página de busca de profissionais
    When O usuário insere "Ginecologista" no campo de busca
    And Clica no botão "Buscar"
    Then O sistema exibe a mensagem "Não encontramos o que você procura."

  Scenario: Contato com um profissional
    Given O usuário está na página de resultados de busca
    When Clica no botão "Exibir contato" de um profissional listado
    Then O sistema exibe as opções de forma de contato
    And Os botões estão habilitados
