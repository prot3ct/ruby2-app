class ArticlesController < ApplicationController
        def create 
            article = Article.new
            article.save
            # article.name = "KONCEHE"# params[:name]

            render :json => article.to_json
        end

        def get_by_id
            article = Article.find(id: params[:id])
            render :json => artcile.to_json            
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
