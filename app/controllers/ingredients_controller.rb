class IngredientsController < ApplicationController
  def index
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ing_params)
    if @ingredient.save
      redirect_to @ingredient
  end

  def update
    @ingredient = Ingredient.find(params[:id])
  end

  def ing_params
    params.require(:ingredient).permit(:name)
  end
end
