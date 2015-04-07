class ProfilesController < ApplicationController

  def index
    redirect_to profiles_governor_path
  end

  def governor
    @areas = CandidateArea.all
    @candidates = Candidate.where(candidate_area_id: CandidateArea.where(name: "Gubernatura").pluck(:id)[0])
    @filters = PoliticalParty.all
  end

  def deputy
    @areas = CandidateArea.all
    @candidates = Candidate.where(candidate_area_id: CandidateArea.where(name: "Alcaldía").pluck(:id)[0])
    @filters = GeographicalArea.all
  end

  def mayor
    @areas = CandidateArea.all
    @candidates = Candidate.where(candidate_area_id: CandidateArea.where(name: "Diputación").pluck(:id)[0])
    @filters = GeographicalArea.all
  end
end
