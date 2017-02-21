class ArticlesController < ApplicationController
        def create 
            current_time = Time.new

            article = Article.new
            article.updated_at = current_time.inspect
            article.save

            render :json => article.to_json
        end

        def get_by_id
            article = Article.find(id: params[:id])
            render :json => artcile.to_json            
        end

        def show
            render :json => Article.all
        end
        
        def construct 
            if !Article.exists?(name: params[:name])
                current_time = Time.new 
                article = Article.new
                article.name = params[:name]
                article.created_at = current_time.inspect
                article.updated_at = current_time.inspect
                artcile.save
                return article
            end
            
            return Article.find_by(name: params[:name])
        end
end
