class Api::V001::FormulasController < ApplicationController


    # full crud 
    def index
        @formulas = Formula.all
        render json: @formulas, include:['ingredients', 'formula_ingredients' ]
    end 

    def create 
  
        @category = Category.find(formula_params[:category_id])
        
        @formula = Formula.new(title: formula_params[:title], image: formula_params[:image], description: formula_params[:description],directions: formula_params[:directions], user_id: formula_params[:user_id],category_id: @category.id)
           
        if @formula.valid? 
            @formula.save 
            params[:ingredients].map do |ing| 
                @ingredient = Ingredient.find_by(name: ing[:name])
                FormulaIngredient.create(formula_id: @formula.id, ingredient_id: @ingredient.id, percentage: ing[:percent])
            end 
            # params[:concerns].map do |concern| 
            #     @concern = Concern.find_by(name: concern)
            #     FormulaConcern.create(formula_id: @formula.id, concern_id: @concern.id)
            # end 
            @concern = Concern.find_by(name: params[:concerns])
            FormulaConcern.create(formula_id: @formula.id, concern_id: @concern.id)

        render json: @formula 

        else 
            render json: 'something went wrong trying to create this formula'
        end 
    end 



    private 

    def formula_params
      params.require(:formula).permit(:title, :description, :image, :user_id, :category_id, :directions)
    end 

end
