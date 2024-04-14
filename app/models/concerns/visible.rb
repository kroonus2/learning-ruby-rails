module Visible
  extend ActiveSupport::Concern

  # Define uma constante para os status válidos
  VALID_STATUSES = ['public', 'private', 'archived']

  # Método chamado quando o módulo é incluído em uma classe
  included do
    # Define uma validação para o atributo status, garantindo que ele seja um dos status válidos
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  # Métodos de classe definidos dentro do concern
  class_methods do
    # Método de classe para contar quantos registros têm o status 'public'
    def public_count
      where(status: 'public').count
    end
  end

  # Método de instância para verificar se o status é 'archived'
  def archived?
    status == 'archived'
  end
end
