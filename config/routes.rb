Rails.application.routes.draw do
  # Define a rota raiz da aplicação, que aponta para a action 'index' do controller 'articles'
  root "articles#index"

  # Define rotas RESTful para o recurso 'articles', gerando rotas para todas as operações CRUD
  # Além disso, aninha as rotas do recurso 'comments' dentro do recurso 'articles'
  resources :articles do 
    resources :comments
  end
end
