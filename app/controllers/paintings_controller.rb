class PaintingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @paintings = Painting.all
  end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(painting_params)
    @painting.user = current_user
    if @painting.save!
      redirect_to painting_path(@painting)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show

  end

  private

  def painting_params
    params.require(:painting).permit(:name, :price, :description, :image_url)
  end
end
