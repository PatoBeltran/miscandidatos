class CandidateAreasController < ApplicationController
  before_filter :authenticate_user!

  def new
    @candidate_area = CandidateArea.new
  end

  def create
    @candidate_area = CandidateArea.new(candidate_area_params)

    if @candidate_area.save
      redirect_to @candidate_area, notice: "El área de candidatura se creó correctamente."
    else
      render :new
    end
  end

  def edit
    @candidate_area = CandidateArea.find(params[:id])
  end

  def update
    @candidate_area = CandidateArea.find(params[:id])

    if @candidate_area.update_attributes(candidate_area_params)
      redirect_to @candidate_area, notice: "El área de candidatura se actualizó correctamente."
    else
      render :edit
    end
  end

  def show
    @candidate_area = CandidateArea.find(params[:id])
  end

  def index
    @candidate_areas = CandidateArea.all
  end

  def destroy
    CandidateArea.find(params[:id]).destroy
    redirect_to candidate_areas_path, notice: "El área de candidatura se eliminó correctamente."
  end

  private

  def candidate_area_params
    params.require(:candidate_area).permit(:name)
  end
end
