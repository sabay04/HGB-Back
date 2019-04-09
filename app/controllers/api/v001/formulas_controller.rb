class Api::V001::FormulasController < ApplicationController
    before_action :find_formula, only: [ :update, :destroy]

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

    def update 
        # @formula = Formula.find(params[:id])
        @formula.update(formula_params)
    
        if @formula.valid?

            params[:formula][:ingredients].map do |ing| 
                @ingredient = Ingredient.find_by(name: ing[:name])
                @formulaIngredient =  FormulaIngredient.find_by(formula_id: @formula.id, ingredient_id: @ingredient.id)
              
                if @formulaIngredient 
                    @formulaIngredient.update(formula_id: @formula.id, ingredient_id: @ingredient.id, percentage: ing[:percentage])
               
                else
                    @formulaIngredient =  FormulaIngredient.create(formula_id: @formula.id, ingredient_id: @ingredient.id, percentage: ing[:percentage])
                end 

            end 
            
            params[:formula][:concerns].map do |con| 
                @concern = Concern.find_by(name: con[:name])
                @formulaConcern = FormulaConcern.find_or_create_by(formula_id: @formula.id, concern_id: @concern.id)
            end 
          

            render json: @formula
        else
            render json: "formula parameters invalid"
        end
    end 


    def destroy
        # @formula = Formula.find(params[:id])
       if @formula.destroy
        render json: @formula
       else 
        render json: @formula.errors.full_messages
       end 
    end 


    private 

    def formula_params
      params.require(:formula).permit(:title, :description, :image, :user_id, :category_id, :directions)
    end 

    def find_formula 
        @formula = Formula.find(params[:id])
    end 

end
