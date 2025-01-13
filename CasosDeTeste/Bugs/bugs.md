# Registro de Bugs

---

## **Bug 1: Perda de dados ao editar o cadastro, causando redirecionamento em loop para completar cadastro**

### **Descrição**
Ao editar um dado no perfil de usuário e salvar, o sistema redireciona para o fluxo de "Completar Cadastro", mesmo que todos os dados já estivessem preenchidos anteriormente. O problema ocorre em duas etapas:
1. Após salvar pela primeira vez, o sistema redireciona para "Completar Cadastro" e os dados anteriores são perdidos.
2. Após preencher novamente e salvar, o sistema redireciona novamente para "Completar Cadastro".
3. Apenas após salvar pela segunda vez, o sistema registra os dados corretamente.

---

### **Passos para reproduzir**
1. Acesse a URL: [Perfil do Usuário](https://paciente-staging.lacreisaude.com.br/perfil/).
2. No formulário de edição, altere qualquer dado (ex.: nome ou telefone).
3. Clique em **Salvar**.
4. Observe que o sistema redireciona para o fluxo de "Completar Cadastro".
5. Preencha novamente os dados solicitados e clique em **Salvar**.
6. O sistema redireciona novamente para "Completar Cadastro".
7. Após salvar pela segunda vez, o sistema finalmente mantém as alterações realizadas.

---

### **Resultado esperado**
- O sistema deve salvar os dados editados corretamente na primeira tentativa.
- O sistema deve permanecer na página de edição de perfil.
- O fluxo de "Completar Cadastro" não deve ser acionado se todos os dados já estiverem preenchidos.

---

### **Resultado real**
- O sistema redireciona indevidamente para "Completar Cadastro" após salvar, causando:
  1. Perda de dados previamente registrados.
  2. Necessidade de preencher o formulário duas vezes para que os dados sejam salvos.

---

### **Impacto**
- **Gravidade**: Alta.
  - Prejudica a experiência do usuário, que precisa repetir o processo para salvar os dados.
  - Pode levar à frustração e à perda de confiança no sistema.
- **Frequência**: Sempre que o cadastro é editado.
- **Impacto no negócio**:
  - Usuários podem desistir de editar seus dados devido à repetição do processo.
  - Reputação do sistema pode ser comprometida.

---

### **Ambiente de Teste**
- **URL**: [https://paciente-staging.lacreisaude.com.br/perfil/](https://paciente-staging.lacreisaude.com.br/perfil/)
- **Dispositivo**: Mobile (simulado via DevTools do Google Chrome).
- **Sistema Operacional**: Windows 11 Home Single Language.
- **Navegador**: Google Chrome Versão 131.0.6778.265 (Versão oficial) 64 bits.
- **Data do Teste**: 09/01/2025.

---

### **Evidências**
- **Gravação de tela**:
  - [Visualizar Gravação Bug 1](https://app.screencast.com/uulMqTK5vtOgE)

---

### **Sugestão de Melhoria**
1. Revisar a lógica de validação ao salvar os dados de perfil, garantindo que:
   - Dados existentes não sejam perdidos.
   - O fluxo de "Completar Cadastro" só seja acionado quando realmente houver informações ausentes.
2. Implementar mensagens claras ao usuário indicando o status do salvamento (ex.: "Dados salvos com sucesso").
3. Adicionar testes automatizados para validar o comportamento esperado no salvamento do perfil.

---

### **Prioridade**
- **Alta**: Deve ser corrigido com urgência devido ao impacto na experiência do usuário e à alta frequência do problema.

---

## **Bug 2: Validação incorreta na data de nascimento permite anos inválidos (ex.: 1800)**

### **Descrição**
O sistema permite que o usuário insira uma data de nascimento com um ano inválido, como 1800, e conclua o cadastro sem apresentar qualquer validação ou mensagem de erro. Apesar de ser uma data válida em termos de formato, não faz sentido no contexto real, já que uma pessoa nascida nesse ano não estaria viva. A ausência de validação compromete a integridade dos dados cadastrados.

---

### **Passos para reproduzir**
1. Acesse a URL: [Cadastro de Usuário](https://paciente-staging.lacreisaude.com.br/perfil/).
2. No campo **Data de Nascimento**, insira a data 01/01/1800 (ou outra data com um ano irreal, ex.: 01/01/1700).
3. Clique no botão **Salvar**.
4. Observe que o sistema aceita a data e finaliza o cadastro sem apresentar mensagens de erro ou validações.

---

### **Resultado esperado**
- O sistema deve validar o campo de data de nascimento e limitar os anos permitidos a um intervalo razoável, como 1900 até o ano atual.
- Se o usuário inserir um ano fora desse intervalo, o sistema deve exibir uma mensagem de erro, como: "Por favor, insira uma data de nascimento válida."

---

### **Resultado real**
- O sistema aceita e cadastra a data de nascimento com anos inválidos, como 1800, sem qualquer validação ou mensagem de erro.

---

### **Impacto**
- **Gravidade**: Média.
  - Pode comprometer a integridade dos dados do banco, gerando cadastros incoerentes.
  - Pode impactar sistemas que dependem de dados precisos, como cálculos de idade ou relatórios baseados em datas de nascimento.
- **Frequência**: Sempre que uma data inválida é inserida.
- **Impacto no negócio**:
  - Dificulta a análise de dados, como cálculos de faixas etárias.
  - Afeta a confiabilidade do sistema e pode gerar retrabalho para corrigir cadastros inconsistentes.

---

### **Ambiente de Teste**
- **URL**: [https://paciente-staging.lacreisaude.com.br/perfil/](https://paciente-staging.lacreisaude.com.br/perfil/)
- **Dispositivo**: Mobile (simulado via DevTools do Google Chrome).
- **Sistema Operacional**: Windows 11 Home Single Language.
- **Navegador**: Google Chrome Versão 131.0.6778.265 (Versão oficial) 64 bits.
- **Data do Teste**: 09/01/2025.

---

### **Evidências**
- **Capturas de tela**:
  - Antes de salvar o cadastro com a data inválida.

![Atualização com data de nascimento inválida 2](https://github.com/user-attachments/assets/6e53622b-6afb-4db1-997f-df90fae6725e)

- Tela de confirmação mostrando que o cadastro foi aceito com a data 1800.

![Atualização com data de nascimento inválida](https://github.com/user-attachments/assets/446b6408-396c-4bb4-b722-c54855c4e931)

- **Gravação de tela**:
  - [Visualizar Gravação Bug 2](https://app.screencast.com/BL8gTxqp1pu1X)

---

### **Sugestão de Melhoria**
1. Implementar uma validação no campo **Data de Nascimento**, limitando o intervalo permitido para:
   - Anos entre 1900 e o ano atual.
   - Garantir que o formato da data esteja correto.
2. Exibir uma mensagem clara para o usuário ao inserir uma data fora do intervalo permitido: "Por favor, insira uma data de nascimento válida (anos entre 1900 e o ano atual)."
3. Configurar um teste automatizado para validar o comportamento do campo **Data de Nascimento**.
   - Adicionar o teste no workflow YAML para rodar automaticamente:
     - [Local do YAML](https://github.com/joyce-cervantes/QA-Testes-Lacrei/blob/main/.github/workflows/cypress-tests.yaml).


---

## **Bug 3: Requisição repetida de confirmação de telefone ao visualizar dados de contato de um profissional de saúde**

### **Descrição**
O sistema solicita que o usuário confirme seu telefone (recebendo um código via SMS) antes de visualizar os dados de contato de um profissional de saúde. Após a confirmação, o usuário consegue acessar os dados de contato normalmente. No entanto, ao retornar à tela inicial e buscar novamente o mesmo profissional, o sistema exige que o telefone seja confirmado novamente, mesmo que já tenha sido validado anteriormente durante a mesma sessão.

---

### **Passos para reproduzir**
1. Como paciente, acesse o aplicativo e faça login no sistema.
2. Busque um profissional de saúde na tela inicial.
3. Escolha o profissional desejado.
4. Clique para visualizar os dados de contato do profissional.
5. Confirme o telefone inserindo o código recebido via SMS.
6. Observe que os dados de contato do profissional são exibidos corretamente.
7. Retorne à tela inicial.
8. Busque novamente o mesmo profissional.
9. Clique novamente para visualizar os dados de contato.

---

### **Resultado esperado**
- Após a confirmação do telefone na primeira tentativa, o sistema deve lembrar que o telefone já foi validado durante a mesma sessão.
- O sistema não deve solicitar a confirmação do telefone novamente para acessar os dados de contato do mesmo profissional.

---

### **Resultado real**
- O sistema solicita a confirmação do telefone novamente ao tentar visualizar os dados de contato do mesmo profissional, mesmo que o telefone já tenha sido validado anteriormente durante a mesma sessão.

---

### **Impacto**
- **Gravidade**: Média.
  - Prejudica a experiência do usuário devido à redundância do processo.
  - Pode gerar frustração e aumentar o tempo necessário para acessar as informações desejadas.
- **Frequência**: Sempre que o mesmo profissional é buscado novamente durante a mesma sessão.
- **Impacto no negócio**:
  - Reduz a percepção de usabilidade e confiabilidade do aplicativo.
  - Pode desmotivar usuários a utilizar a funcionalidade devido à repetição desnecessária do processo.

---

### **Ambiente de Teste**
- **URL**: [https://paciente-staging.lacreisaude.com.br/](https://paciente-staging.lacreisaude.com.br/)
- **Dispositivo**: Mobile (simulado via DevTools do Google Chrome).
- **Sistema Operacional**: Windows 11 Home Single Language.
- **Navegador**: Google Chrome Versão 131.0.6778.265 (Versão oficial) 64 bits.
- **Data do Teste**: 09/01/2025.

---

### **Evidências**
- **Gravação de tela**:
  - [Visualizar Gravação Bug 3](https://app.screencast.com/WQ3pO3cWjvTxC)

---

### **Sugestão de Melhoria**
1. Implementar um mecanismo que armazene a validação do telefone para a sessão atual, evitando que o usuário precise confirmar o telefone repetidamente para o mesmo profissional.
2. Adicionar uma mensagem informativa caso a sessão expire, indicando que uma nova validação será necessária.

---

### **Prioridade**
- **Média**: Deve ser corrigido para melhorar a experiência do usuário e evitar redundância no processo de validação.

  ---

## **Bug 4: Navegação por teclado não permite visualizar informações do profissional**

### **Descrição**
Durante o teste de navegação por teclado, foi identificado que não é possível visualizar as informações de contato de um profissional de saúde usando apenas o teclado. O botão "Informações" recebe o foco ao pressionar a tecla **Tab**, mas não responde ao comando **Enter** para ativar a funcionalidade.

---

### **Passos para reproduzir**
1. Acesse a URL: [Lista de Profissionais](https://paciente-staging.lacreisaude.com.br/).
2. Utilize a tecla **Tab** para navegar até o botão "Informações" de um profissional listado.
3. Pressione a tecla **Enter** para tentar ativar a funcionalidade.
4. Observe que o botão não responde ao comando.

---

### **Resultado esperado**
- Ao pressionar **Enter**, o botão "Visualizar Informações" deve abrir uma nova página ou modal exibindo as informações de contato do profissional.

---

### **Resultado real**
- O botão "Informações" não responde ao comando **Enter**, tornando impossível acessar as informações de contato apenas com o teclado.

---

### **Impacto**
- **Gravidade**: Alta.
  - Pacientes que dependem exclusivamente do teclado para navegação não conseguem acessar as informações do profissional.
  - Compromete a conformidade do sistema com as diretrizes de acessibilidade.
- **Frequência**: Sempre que o botão é acessado via teclado.
- **Impacto no negócio**:
  - Afeta a experiência de pacientes com deficiência motora ou que preferem navegação por teclado.
  - Pode comprometer a imagem do sistema em termos de acessibilidade.

---

### **Ambiente de Teste**
- **URL**: [https://paciente-staging.lacreisaude.com.br/](https://paciente-staging.lacreisaude.com.br/)
- **Dispositivo**: Desktop em modo de navegação simulando acessibilidade por teclado.
- **Sistema Operacional**: Windows 11 Home Single Language.
- **Navegador**: Google Chrome Versão 131.0.6778.265 (Versão oficial) 64 bits.
- **Data do Teste**: 10/01/2025.

---

### **Evidências**

- **Gravação de tela:**
  - [Visualizar Gravação Bug 4](https://app.screencast.com/6cHNsHsPB28g0).

---

### **Sugestão de Melhoria**
1. Adicionar suporte ao evento de teclado para o botão "Informações", garantindo que o comando **Enter** funcione corretamente.
2. Realizar testes manuais e automatizados para validar a acessibilidade de todos os botões interativos.

---

### **Prioridade**
- **Alta**: Necessário corrigir para garantir a conformidade com as diretrizes de acessibilidade e melhorar a experiência do usuário.

## **Bug 5: Tela de "Minhas Consultas" redireciona para a página inicial**

---

### **Descrição**
Paciente ao acessar a funcionalidade "Minhas Consultas" com a sessão iniciada, o sistema redireciona o usuário para a página inicial, em vez de exibir a tela de consultas. Não há mensagens indicando consultas agendadas, histórico de consultas anteriores, ou que nenhuma consulta foi encontrada.

---

### **Passos para reproduzir**
1. Como paciente, faça login no sistema.
2. Clique na opção **Minhas Consultas** no menu principal.
3. Observe que o sistema redireciona o usuário para a página inicial.

---

### **Resultado esperado**
- O sistema deve exibir:
  1. A lista de consultas agendadas.
  2. Mensagem indicando que não há consultas agendadas, caso seja o caso.
  3. Histórico de consultas anteriores, caso aplicável.

---

### **Resultado real**
- O sistema redireciona o paciente para a página inicial, sem fornecer nenhuma informação sobre consultas.

---

### **Impacto**
- **Gravidade**: Alta.
  - Impede o paciente de acessar informações críticas relacionadas às consultas.
  - Prejudica a usabilidade e confiabilidade do sistema.
- **Frequência**: Sempre que a funcionalidade **Minhas Consultas** é acessada.
- **Impacto no negócio**:
  - Reduz a confiança do usuário no sistema.
  - Pode gerar reclamações e insatisfação dos usuários.

---

### **Ambiente de Teste**
- **URL**: [https://paciente-staging.lacreisaude.com.br/](https://paciente-staging.lacreisaude.com.br/)
- **Dispositivo**: Mobile (simulado via DevTools do Google Chrome com dispositivo móvel de nível médio).
- **Sistema Operacional**: Windows 11 Home Single Language.
- **Navegador**: Google Chrome Versão 131.0.6778.265 (Versão oficial) 64 bits.
- **Data do Teste**: 13/01/2025.

---

### **Evidências**
- **Gravação de tela**:
  - [Visualizar Gravação Bug 5](https://app.screencast.com/WRPUJ8kTDawXk)

---

### **Sugestão de Melhoria**
1. Implementar a lógica para exibir a lista de consultas agendadas, histórico de consultas ou mensagem de ausência de consultas, conforme aplicável.
2. Adicionar testes automatizados para validar o comportamento correto da funcionalidade "Minhas Consultas".

---

### **Prioridade**
- **Alta**: Este bug deve ser corrigido com urgência para restaurar a funcionalidade crítica do sistema e melhorar a experiência do usuário.
