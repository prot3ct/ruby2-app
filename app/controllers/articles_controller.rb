class ArticlesController < ApplicationController
        def create 
            article = Article.new
            article.name = params[:name]
            article.save

            render :json => article.to_json
        end

        def find
            # article = Article.find(params[:id])
            # render :json => artcile.to_json
            render 'welcome'            
        end

        def show
            render :json => Article.all
        end
        
        # def construct 
        #     if !Article.exists?(name: params[:name])
        #         article = Article.new
        #         article.name = params[:name]
        #         artcile.save
        #         return article
        #     end
            
        #     return Article.find(name: params[:name])
        # end
end
