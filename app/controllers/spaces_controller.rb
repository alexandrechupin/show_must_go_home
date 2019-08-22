class SpacesController < ApplicationController
before_action :set_space, only: [:show, :edit, :update, :destroy]

  def index
    @spaces = Space.geocoded

    @markers = @spaces.map do |space|
         {
           lat: space.latitude,
           lng: space.longitude,
           infoWindow: render_to_string(partial: "info_window", locals: { space: space })
         }
      end

    # if params[:query].present?
    #   @spaces = Space.global_search(params[:query])
    # else
    #   @spaces = Space.all
    # end

    if params[:address].present?
      @spaces = Space.near(params[:address], 1)
    else
      @spaces = Space.all
    end
  end

  def show
    @space = Space.find(params[:id])
    @booking = Booking.new
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.equipment.delete_at(0)
    @space.user = current_user
    if @space.save
      current_user.host = true
      current_user.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @space.update(space_params)
    redirect_to space_path(@space)
  end

  def destroy
    @space.destroy
    redirect_to spaces_path
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def space_params
    params.require(:space).permit(:name, :street, :city, :zipcode, :event_type, :place_type, :capacity, :description, :policy, :photo, equipment: [])
  end
end
