class ArticlesController < ApplicationController

  # Autenticação HTTP básica para todas as ações do controlador, exceto para :index e :show
  #http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  # Método GET que busca todos os registros do modelo no banco de dados
  def index
    @articles = Article.all
  end

  # Método GET que busca um registro específico do modelo no banco de dados pelo seu ID
  def show
    @article = Article.find(params[:id])
  end

  # Método GET para exibir o formulário de criação de um novo registro
  def new
    @article = Article.new
  end

  # Método POST para criar um novo registro com base nos parâmetros enviados pelo formulário
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  # Método GET para exibir o formulário de edição de um registro existente
  def edit
    @article = Article.find(params[:id])
  end
  
  # Método POST para atualizar um registro existente com base nos parâmetros enviados pelo formulário
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # Método DELETE para excluir um registro do banco de dados
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  # Método privado para definir os parâmetros permitidos para a criação e atualização de um artigo
  private
  def article_params
    params.require(:article).permit(:title, :body, :status)
  end
end
