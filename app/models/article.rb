class Article < ApplicationRecord
  # Inclui o concern 'Visible', que encapsula funcionalidades relacionadas à visibilidade
  include Visible

  # Define a associação 'has_many' com o modelo 'Comment', indicando que um artigo pode ter vários comentários
  # O argumento 'dependent: :destroy' especifica que se um artigo for excluído, todos os comentários associados a ele também serão excluídos.
  has_many :comments, dependent: :destroy

  # Valida se o título está presente (não pode ser nulo ou uma string vazia)
  validates :title, presence: true

  # Valida se o corpo está presente e tem pelo menos 10 caracteres de comprimento
  validates :body, presence: true, length: { minimum: 10 }
end
