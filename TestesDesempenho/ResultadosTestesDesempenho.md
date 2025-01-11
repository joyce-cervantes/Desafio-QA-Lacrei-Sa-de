# Resultados dos Testes de Desempenho

## **Descrição Geral**
Os testes de desempenho foram realizados para avaliar o tempo de resposta e a estabilidade de endpoints críticos do sistema da Lacrei Saúde. Abaixo estão os resultados de cada endpoint testado.

---

## **Resultados dos Endpoints**

### 1. **Busca de Profissional**
**URL:** `/lista-de-profissionais?q=psicologia`  
**Método:** `GET`  
**Status Code:** `200 OK`  
**Tempo de Resposta:** `491ms`  

**Observação:**  
- O endpoint retornou os profissionais corretamente com base na especialidade solicitada (`psicologia`).  
- O tempo de resposta está aceitável para a operação solicitada.

---

### 2. **Cadastro**
**URL:** `/cadastro/`  
**Método:** `POST`  
**Status Code:** `405 Method Not Allowed`  
**Tempo de Resposta:** `330ms`  

**Observação:**  
- O endpoint retornou um erro `405 Method Not Allowed`. Isso indica que o método utilizado (`POST`) pode estar incorreto ou não suportado para este endpoint.  
- Ajustar os dados enviados ou verificar a documentação da API para correção.

---

### 3. **Login**
**URL:** `/login/`  
**Método:** `POST`  
**Status Code:** `200 OK`  
**Tempo de Resposta:** `432ms`  

**Observação:**  
- O endpoint de login funcionou corretamente, retornando o status esperado (`200 OK`).  
- O tempo de resposta está dentro de uma margem aceitável para uma operação de autenticação.

---

## **Conclusões**
- O tempo de resposta de todos os endpoints testados está dentro de uma faixa aceitável para um ambiente de staging.
- O endpoint de **Cadastro** apresentou um erro (`405 Method Not Allowed`). Recomenda-se investigar se o método HTTP e o payload enviado estão corretos.

---

## **Evidências**
1. **Busca de Profissional**
   ![Busca de Profissional](https://github.com/seu-usuario/seu-repositorio/imagens/busca-profissional.png)

2. **Cadastro**
   ![Cadastro](https://github.com/seu-usuario/seu-repositorio/imagens/cadastro.png)

3. **Login**
   ![Login](https://github.com/seu-usuario/seu-repositorio/imagens/login.png)

---

## **Próximos Passos**
- Corrigir a requisição para o endpoint de cadastro.
- Realizar testes adicionais com cargas mais altas para validar a estabilidade dos endpoints.
