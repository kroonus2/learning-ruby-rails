**Projeto de Exemplo: Blog em Rails**

## Descrição do Projeto
Este é um projeto de exemplo para um blog desenvolvido em Ruby on Rails. O blog permite aos usuários criar artigos e adicionar comentários a esses artigos. Ele demonstra os conceitos básicos de desenvolvimento web com Rails, incluindo modelos, controladores, visualizações, rotas e associações entre modelos.


## Funcionalidades Principais
- **Artigos**: Os usuários podem criar, visualizar, editar e excluir artigos. Cada artigo possui um título e um corpo.
- **Comentários**: Os usuários podem adicionar comentários aos artigos existentes. Cada comentário possui um autor e um corpo.


## Estrutura do Projeto
O projeto segue a seguinte estrutura de diretórios:

- `app/`: Contém os modelos, controladores, visualizações e assets do aplicativo.
- `config/`: Contém as configurações do aplicativo, incluindo as rotas, banco de dados e ambiente.
- `db/`: Contém as migrações de banco de dados e seeds para inicialização do banco de dados.
- `public/`: Contém os arquivos públicos do aplicativo, como imagens e folhas de estilo.
- `test/`: Contém os testes automatizados para o aplicativo.


## Como Usar
1. **Instalação**: Clone o repositório e execute `bundle install` para instalar as dependências.
2. **Banco de Dados**: Execute `rails db:migrate` para executar as migrações do banco de dados.
3. **Inicialização do Servidor**: Execute `rails server` para iniciar o servidor Rails.
4. **Acesso ao Aplicativo**: Acesse o aplicativo em `http://localhost:3000`.


## Contribuição
Contribuições são bem-vindas! Sinta-se à vontade para enviar pull requests com melhorias, correções de bugs ou novas funcionalidades.


## Licença
Este projeto é licenciado sob a [MIT License](https://opensource.org/licenses/MIT).
