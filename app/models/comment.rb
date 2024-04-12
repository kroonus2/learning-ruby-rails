class Comment < ApplicationRecord
  # Define a associação 'belongs_to' com o modelo 'Article', indicando que um comentário pertence a um artigo
  belongs_to :article
end
