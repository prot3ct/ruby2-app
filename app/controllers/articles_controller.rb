class ArticlesController < ApplicationController
        def create 
            article = Article.new
            article.name = params[:name]
            article.save

            render :json => article.to_json
        end

        def find
            article = Article.find(params[:id])
            render :json => article.to_json            
        end

        def show
            render :json => Article.all
        end
end
