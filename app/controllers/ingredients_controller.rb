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
  end

  def create
  end

  def update
end
end
