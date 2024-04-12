class CommentsController < ApplicationController
    # Método para criar um novo comentário em um artigo
    def create
        # Encontra o artigo ao qual o comentário será associado
        @article = Article.find(params[:article_id])
        
        # Cria um novo comentário associado ao artigo
        @comment = @article.comments.create(comment_params)
        
        # Redireciona para a página do artigo após a criação do comentário
        redirect_to article_path(@article)
    end

    private
        # Método privado para permitir apenas os parâmetros necessários para criar um comentário
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
end
