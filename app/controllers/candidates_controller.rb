class CandidatesController < ApplicationController
  before_filter :authenticate_user!

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = current_user.posted_candidates.new(candidate_params)

    if @candidate.save
      redirect_to @candidate, notice: "El candidato se creó correctamente."
    else
      render :new
    end
  end

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def update
    @candidate = Candidate.find(params[:id])

    if @candidate.update_attributes(candidate_params)
      @candidate.modified_by << { user_id: current_user.id, date: Time.now }
      @candidate.save!
      redirect_to @candidate, notice: "El candidato se actualizó correctamente"
    else
      render :edit
    end
  end

  def index
    @candidates = Candidate.all
  end

  def show
    @candidate = Candidate.find(params[:id])
  end

  def destroy
    Candidate.find(params[:id]).destroy
    redirect_to candidates_path, notice: "El candidato se ha eliminado correctamente."
  end

  private

  def candidate_params
    params.require(:candidate).permit(:name, :bio, :proposals, :active, :candidate_area_id, :political_party_id, :geographical_area_id, milestones_attributes: [:id, :position, :proposals, :accomplished, :_destroy])
  end
end
