class PaintingsController < ApplicationController
  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(painting_params)
    if @painting.save
      redirect_to paintings_path
      # redirect_to paintings_path(@painting)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def painting_params
    params.require(:painting).permit(:name, :price, :description)
  end
end
