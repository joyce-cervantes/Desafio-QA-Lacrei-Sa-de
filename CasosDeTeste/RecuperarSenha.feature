Feature: Recuperação de senha
  Como usuário, quero redefinir minha senha caso eu a esqueça.

  Scenario: Recuperação de senha com e-mail válido
    Given O usuário está na página de login
    When O usuário clica no link "Esqueci minha senha"
    And Preenche o campo "E-mail" com um e-mail válido
    And Clica no botão "Enviar"
    Then O sistema exibe a mensagem "Verifique seu e-mail para redefinir a senha. Caso o e-mail fornecido exista, será enviada um link para redefinição de senha. Por favor, clique em reenviar se não receber o link."
    And O usuário recebe um e-mail com o link de redefinição

  Scenario: Recuperação de senha com e-mail inválido
    Given O usuário está na página de login
    When O usuário clica no link "Esqueci minha senha"
    And Preenche o campo "E-mail" com um e-mail inválido
    And Clica no botão "Enviar"
    Then O sistema exibe a mensagem "Verifique seu e-mail para redefinir a senha. Caso o e-mail fornecido exista, será enviada um link para redefinição de senha. Por favor, clique em reenviar se não receber o link."

  Scenario: Recuperação de senha sem preencher o campo e-mail
    Given O usuário está na página de login
    When O usuário clica no link "Esqueci minha senha"
    And Não preenche o campo "E-mail"
    And Clica no botão "Enviar"
    Then O sistema exibe a mensagem de erro "Por favor, utilize um formato de e-mail válido. Por exemplo: email@dominio.com.br."
