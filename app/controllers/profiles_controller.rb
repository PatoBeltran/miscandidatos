class ProfilesController < ApplicationController

  def index
    redirect_to profiles_governor_path
  end

  def governor
    @areas = CandidateArea.all
    @candidates = Candidate.where(candidate_area_id: CandidateArea.where(name: "Gubernatura").pluck(:id).first)
    @filters = PoliticalParty.with_candidates
  end

  def deputy
    @areas = CandidateArea.all
    @candidates = Candidate.where(candidate_area_id: CandidateArea.where(name: "Alcaldía").pluck(:id).first)
    @filters = GeographicalArea.with_candidates
  end

  def mayor
    @areas = CandidateArea.all
    @candidates = Candidate.where(candidate_area_id: CandidateArea.where(name: "Diputación").pluck(:id).first)
    @filters = GeographicalArea.with_candidates
  end
end
