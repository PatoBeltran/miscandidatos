class GeographicalAreasController < ApplicationController
  before_filter :authenticate_user!

  def new
    @geographical_area = GeographicalArea.new
  end

  def create
    @geographical_area = GeographicalArea.new(geographical_area_params)

    if @geographical_area.save
      redirect_to geographical_areas_path, notice: "La zona geográfica se creó correctamente."
    else
      render :new
    end
  end

  def edit
    @geographical_area = GeographicalArea.find(params[:id])
  end

  def update
    @geographical_area = GeographicalArea.find(params[:id])

    if @geographical_area.update_attributes(geographical_area_params)
      redirect_to geographical_areas_path, notice: "La zona geográfica se actualizó correctamente."
    else
      render :edit
    end
  end

  def show
    @geographical_area = GeographicalArea.find(params[:id])
  end

  def index
    @geographical_areas = GeographicalArea.all
  end

  def destroy
    GeographicalArea.find(params[:id]).destroy
    redirect_to geographical_areas_path, notice: "La zona geográfica se ha eliminado correctamente."
  end

  private

  def geographical_area_params
    params.require(:geographical_area).permit(:state, :city, :color)
  end
end
