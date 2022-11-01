class PaintingsController < ApplicationController
<<<<<<< HEAD
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
=======
  skip_before_action :authenticate_user!, only: :index

  def index
    @paintings = Painting.all
>>>>>>> d3de4a625cd2e371ebc458a81f8ef13627f7a41b
  end
end
