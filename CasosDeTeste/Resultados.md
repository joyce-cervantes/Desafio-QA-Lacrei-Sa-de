# Resultados dos Testes Manuais

## Fluxo: Cadastro da pessoa usuária

| Cenário                                       | Resultado       | Observação                               |
|-----------------------------------------------|-----------------|------------------------------------------|
| Cadastro com dados válidos                    | Sucesso         | Fluxo funcionando conforme esperado.     |
| Cadastro com e-mail inválido                  | Sucesso         | Mensagem de erro exibida corretamente.   |
| Cadastro sem preencher senha                  | Sucesso         | Mensagem de erro exibida corretamente.   |

## Fluxo: Recuperação de senha

| Cenário                                       | Resultado       | Observação                               |
|-----------------------------------------------|-----------------|------------------------------------------|
| Recuperação com e-mail válido                 | Sucesso         | E-mail enviado com sucesso.              |
| Recuperação com e-mail inválido               | Sucesso         | Mensagem de erro exibida corretamente.   |
| Recuperação sem preencher o campo e-mail      | Sucesso         | Mensagem de erro exibida corretamente.   |

## Fluxo: Edição de perfil

| Cenário                                       | Resultado       | Observação                                                                    |
|-----------------------------------------------|-----------------|-------------------------------------------------------------------------------|
| Atualização com dados válidos                 | Sucesso         | Informações atualizadas corretamente.                                         |
| Atualização sem preencher nome                | Sucesso         | Mensagem de erro exibida corretamente.                                        |
| Atualização com data de nascimento inválida   | Falha           | O sistema aceitou uma data inválida (ex.: 1800) sem exibir mensagem de erro.  |
