class HomeController < ApplicationController

    def index
        render json: {"hi": "hello world"}
    end 
end
