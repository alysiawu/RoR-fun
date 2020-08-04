module Api
    module v1
        class ArticlesControler < ApplicationController
            def index
                articles = Articles.order('created_at DESC');
                render json: { status: 'SUCCESS', message: 'Loaded articles', data: articles}, status:ok
            end
        end
    end
end 