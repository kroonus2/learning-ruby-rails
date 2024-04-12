class CreateComments < ActiveRecord::Migration[7.1]
  def change
    # Cria uma nova tabela chamada 'comments' no banco de dados
    create_table :comments do |t|
      # Adiciona uma coluna 'commenter' do tipo 'string' para armazenar o nome do autor do comentário
      t.string :commenter
      # Adiciona uma coluna 'body' do tipo 'text' para armazenar o conteúdo do comentário
      t.text :body
      # Adiciona uma coluna 'article_id' que serve como chave estrangeira para associar um comentário a um artigo
      # 'null: false' indica que este campo não pode ser nulo
      # 'foreign_key: true' indica que há uma restrição de chave estrangeira associada a esta coluna
      t.references :article, null: false, foreign_key: true

      # Adiciona automaticamente as colunas 'created_at' e 'updated_at' para registrar a data e a hora de criação e atualização
      t.timestamps
    end
  end
end
