# QA-Testes-Lacrei

Repositório com casos de teste para o desafio de QA da Lacrei Saúde.

## Estrutura do Repositório

- **CasosDeTeste/**: Contém os casos de teste escritos em linguagem Gherkin.
  - `Cadastro.feature`: Testes para o fluxo de cadastro.
  - `RecuperarSenha.feature`: Testes para o fluxo de recuperação de senha.
  - `BuscarProfissional.feature`: Testes para o fluxo de busca de profissionais.
- **Bugs/**: Documentação de bugs encontrados durante os testes.
  - `bugs.md`: Lista de bugs e detalhes.

## Como Configurar o Ambiente de Testes

1. Abra o site de testes: [Lacrei Saúde](https://paciente-staging.lacreisaude.com.br/).
2. Use o navegador Google Chrome ou outro navegador moderno.
3. Ative o modo responsivo no navegador para simular a versão mobile.

## Como Executar os Casos de Teste

1. Acesse a pasta `CasosDeTeste/`.
2. Leia os arquivos `.feature` para entender os cenários descritos.
3. Siga os passos manualmente no site.

## Registro de Bugs

Todos os bugs encontrados são registrados na pasta `Bugs/`, no arquivo `bugs.md`, com:
- Descrição do problema.
- Passos para reproduzir.
- Impacto no sistema.

## Próximos Passos

- Automatizar os casos de teste com ferramentas como Cypress.
- Realizar testes de desempenho e registrar métricas.
