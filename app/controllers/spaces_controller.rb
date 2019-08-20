class SpacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(spaces_params)
    if @space.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  private

  def spaces_params
    params.require(:space).permit(:name, :address, :city, :zipcode, :equipment, :event_type, :place_type, :capacity, :description, :photo)
  end

  def set_space
    @space = Space.find(params[:id])
  end
end
