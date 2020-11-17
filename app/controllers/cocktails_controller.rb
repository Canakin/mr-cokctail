class CocktailsController < ApplicationController
  before_action :cocktail_set, only: :show
  def index
    @cocktails = Cocktail.all
  end

  def show; end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_id)
    if @cocktail.save
      redirect_to cocktails_path
    else
      redirect_to new_cocktail_path
    end
  end

  private

  def cocktail_set
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_id
    params.require(:cocktail).permit(:name)
  end
end
