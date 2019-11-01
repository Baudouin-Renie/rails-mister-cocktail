class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new]

  def new
    @dose = Dose.new
  end

  def create
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient, :cocktail)
  end
end
