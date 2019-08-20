class SpacesController < ApplicationController
before_action :set_space, only: [:show, :edit, :update, :destroy]

  def index
    @spaces = Space.all
  end 
  
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
  
  def set_space
    @space = Space.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def space_params
    params.require(:space).permit(:name, :address, :city, :zipcode, :equipment, :event_type, :place_type, :capacity, :description, :photo)
  end

end
