class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all 
    end 

    def new 
        @recipe = Recipe.new
        @users = User.all 
    end 

    def create 
        @recipe = Recipe.create(s_params)
        redirect_to recipes_path(@recipe)
    end 

    private

    def s_params
        params.require(:recipe).permit(:name, :user_id)
    end
end
