class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def indexx
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(set_cocktail)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
        @cocktail = Cocktail.find(params[:id])

    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def set_cocktail
    params.require(:cocktail).permit(:name, :image_url)
  end
end
