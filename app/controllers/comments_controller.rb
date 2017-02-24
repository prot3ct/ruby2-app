class CommentsController < ApplicationController
    def create
        comment = Comment.new
        comment.article_id = params[:article_id]
        comment.content = params[:content]
        comment.save
    
        render :json => comment.to_json
    end

    def find
        comment = Comment.find(params[:id])
        render :json => comment.to_json            
    end

    def show
        render :json => Comment.all
    end

    def show_comments
        # article = Article.find(params[:article_id])
        # comments = article.comments.order('comments.content ASC')
        comments =[]
        render json: => comments
    end
end
