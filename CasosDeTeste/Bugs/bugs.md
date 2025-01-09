# Registro de Bug

## **Bug 1:**

## **Título:**
Perda de dados ao editar o cadastro, causando redirecionamento em loop para completar cadastro.

---

## **Descrição**
Ao editar um dado no perfil de usuário e salvar, o sistema redireciona para o fluxo de "Completar Cadastro", mesmo que todos os dados já estivessem preenchidos anteriormente. O problema ocorre em duas etapas:
1. Após salvar pela primeira vez, o sistema redireciona para "Completar Cadastro" e os dados anteriores são perdidos.
2. Após preencher novamente e salvar, o sistema redireciona novamente para "Completar Cadastro".
3. Apenas após salvar pela segunda vez, o sistema registra os dados corretamente.

---

## **Passos para reproduzir**
1. Acesse a URL: [Perfil do Usuário](https://paciente-staging.lacreisaude.com.br/perfil/).
2. No formulário de edição, altere qualquer dado (ex.: nome ou telefone).
3. Clique em **Salvar**.
4. Observe que o sistema redireciona para o fluxo de "Completar Cadastro".
5. Preencha novamente os dados solicitados e clique em **Salvar**.
6. O sistema redireciona novamente para "Completar Cadastro".
7. Após salvar pela segunda vez, o sistema finalmente mantém as alterações realizadas.

---

## **Resultado esperado**
- Ao clicar em **Salvar**:
  - O sistema deve salvar os dados editados corretamente na primeira tentativa.
  - O sistema deve permanecer na página de edição de perfil.
  - O fluxo de "Completar Cadastro" não deve ser acionado se todos os dados estiverem preenchidos.

---

## **Resultado real (bug)**
- O sistema redireciona indevidamente para "Completar Cadastro" após salvar, causando:
  1. Perda de dados previamente registrados.
  2. Necessidade de preencher o formulário duas vezes para que os dados sejam salvos.

---

## **Impacto**
- **Gravidade**: Alta.
  - Prejudica a experiência do usuário, que precisa repetir o processo para salvar os dados.
  - Pode levar à frustração e à perda de confiança no sistema.
- **Frequência**: Sempre que o cadastro é editado.
- **Impacto no negócio**:
  - Usuários podem desistir de editar seus dados devido à repetição do processo.
  - Reputação do sistema pode ser comprometida.

---

## **Ambiente de Teste**
- **URL**: [https://paciente-staging.lacreisaude.com.br/perfil/](https://paciente-staging.lacreisaude.com.br/perfil/)
- **Dispositivo**: Mobile (simulado via DevTools do Google Chrome).
- **Sistema Operacional**: Windows 11 Home Single Language.
- **Navegador**: Google Chrome Versão 131.0.6778.265 (Versão oficial) 64 bits.
- **Data do Teste**: 09/01/2025.

---

## **Evidências**
- **Capturas de tela**:
  - [Adicionar imagem aqui mostrando o redirecionamento para "Completar Cadastro".]
  - [Adicionar imagem mostrando o estado final após o segundo salvamento.]
- **Gravação de tela (opcional)**:
  - [Adicionar link para vídeo ou arquivo que demonstra o problema.]

---

## **Sugestão de Melhoria**
1. Revisar a lógica de validação ao salvar os dados de perfil, garantindo que:
   - Dados existentes não sejam perdidos.
   - O fluxo de "Completar Cadastro" só seja acionado quando realmente houver informações ausentes.
2. Implementar mensagens claras ao usuário indicando o status do salvamento (ex.: "Dados salvos com sucesso").
3. Adicionar testes automatizados para validar o comportamento esperado no salvamento do perfil.

---

## **Prioridade**
- **Alta**: Deve ser corrigido com urgência devido ao impacto na experiência do usuário e à alta frequência do problema.

