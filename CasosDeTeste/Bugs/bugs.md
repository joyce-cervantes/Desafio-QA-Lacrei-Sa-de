# Registro de Bugs

## Bug 1: Mensagem de erro incorreta no cadastro
- **Descrição:** A mensagem exibida ao tentar cadastrar um e-mail inválido é genérica e não informa que o e-mail está incorreto.
- **Passos para reproduzir:**
  1. Acesse a página de cadastro.
  2. Preencha o campo "E-mail" com "teste@invalido".
  3. Clique no botão "Criar Conta".
- **Impacto:** Médio. Pode confundir o usuário.
- **Sugestão de melhoria:** Alterar a mensagem para "E-mail inválido. Por favor, insira um e-mail válido."

## Bug 2: Telefone inválido aceito no perfil
- **Descrição:** O sistema permite salvar um telefone com menos de 8 dígitos.
- **Passos para reproduzir:**
  1. Acesse a página de edição de perfil.
  2. Insira "12345" no campo telefone.
  3. Clique no botão "Salvar".
- **Impacto:** Alto. Afeta a validade das informações armazenadas.
- **Sugestão de melhoria:** Implementar uma validação para números de telefone.
