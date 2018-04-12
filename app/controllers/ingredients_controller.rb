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
    else
      render :new
    end
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.update(ing_params)
      redirect_to @ingredient
    else
      render :edit
    end
  end

  def ing_params
    params.require(:ingredient).permit(:name)
  end
end
