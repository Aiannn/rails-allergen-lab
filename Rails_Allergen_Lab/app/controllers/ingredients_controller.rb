class IngredientsController < ApplicationController
    
    def index 
        @ingredients = Ingredient.all.sort_by{ |s| s.allergies.size}
    end 

    def show
        @ingredient = Ingredient.find(params[:id])
    end 
end
