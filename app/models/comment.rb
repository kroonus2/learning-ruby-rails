class Comment < ApplicationRecord
  # Inclui o concern 'Visible', que encapsula funcionalidades relacionadas à visibilidade
  include Visible

  # Define a associação 'belongs_to' com o modelo 'Article', indicando que um comentário pertence a um artigo específico
  belongs_to :article
end
