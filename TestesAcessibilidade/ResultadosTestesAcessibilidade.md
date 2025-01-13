# Resultados dos Testes de Acessibilidade

## **Descrição Geral**
Os testes de acessibilidade foram realizados com base nas diretrizes da **WCAG 2.1**, utilizando as ferramentas **Lighthouse** e **WCAG Contrast Checker**. O objetivo foi avaliar o contraste de cores, a navegação por teclado e outros aspectos essenciais para garantir a acessibilidade do sistema.

---

## **Resultados**

### **1. Teste Automatizado com Lighthouse**
- **URL Testada:** [Lista de Profissionais](https://paciente-staging.lacreisaude.com.br/lista-de-profissionais/?q=psicologia)
- **Pontuação Geral de Acessibilidade:** **100/100**
- **Ambiente de Teste:**
  - **Dispositivo:** Emulação do Moto G Power.
  - **Conexão:** 4G limitada (simulada).
  - **Data:** 11/01/2025.

**Conclusões:**
- Todos os critérios automatizáveis de acessibilidade foram atendidos.
- Alguns itens foram destacados para verificação manual (ex.: significados contextuais em labels e interação adicional com dispositivos de assistência).

---

### **2. Teste de Navegação por Teclado**
- **Resultado:** **Conforme**
  - A navegação por teclado funciona corretamente em todos os elementos interativos.
  - O foco visual é exibido adequadamente, e modais podem ser fechados com a tecla **Esc**.

**Observação:**
- A funcionalidade foi validada sem restrições ou barreiras.

---

### **3. Teste de Contraste de Cores**
- **Ferramenta Utilizada:** WCAG Contrast Checker.
- **Resultados:**

| Elemento                      | Tamanho do Texto | Contraste | Status       | Observações                                                                 |
|-------------------------------|------------------|-----------|--------------|-----------------------------------------------------------------------------|
| Botão "Buscar Profissional"   | Pequeno          | 4.52:1    | Conforme (AA)| Contraste aceitável para padrões AA.                                        |
| Parágrafo                     | Pequeno          | 6.32:1    | Conforme (AA)| Nenhum ajuste necessário.                                                  |
| Título da Página              | Grande           | 16.48:1   | Conforme (AAA)| Contraste atende até padrões AAA.                                          |
| Placeholder (Campo de Texto)  | Pequeno          | 13.77:1   | Conforme (AAA)| Placeholder visível e em conformidade com padrões AA e AAA.                |

**Conclusão:**
- Todos os elementos testados atendem aos critérios de contraste exigidos pela **WCAG 2.1**.

---

## **Sugestões de Melhoria**
Embora os testes de acessibilidade tenham resultado em alta conformidade, recomendamos:
1. Continuar realizando testes manuais em dispositivos reais e cenários mais complexos.
2. Monitorar novos componentes ou atualizações no sistema para manter a acessibilidade ao longo do tempo.

---

## **Evidências**
1. **Captura de Tela - Relatório Lighthouse:**
   [Relatório Lighthouse](https://github.com/joyce-cervantes/QA-Testes-Lacrei/blob/main/TestesAcessibilidade/Evidências/Teste%20de%20Acessibilidade.pdf)
   
2. **Captura de Tela - Contraste de Cores:**

   ![Resultados do Contraste](https://github.com/joyce-cervantes/QA-Testes-Lacrei/blob/main/TestesAcessibilidade/Evidências/Acessibilidade-Contraste.png)
   
3. **Gravação de Tela - Navegação por Teclado:**
   [Resultado da Navegação por Teclado](https://app.screencast.com/6cHNsHsPB28g0)
