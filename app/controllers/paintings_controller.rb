class PaintingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @paintings = Painting.all
    if params[:query].present?
      @paintings = Painting.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @paintings = Painting.all
    end
  end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(painting_params)
    @painting.user = current_user
    if @painting.save!
      redirect_to paintings_path(@painting)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @painting = Painting.find(params[:id])
  end

  private

  def painting_params
    params.require(:painting).permit(:name, :price, :description, :photo)
  end
end
