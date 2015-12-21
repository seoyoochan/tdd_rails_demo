class RecipesController < ApplicationController
  before_action :authenticate_user!

  def new
    @recipe = Recipe.new
  end

  def show
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

end
