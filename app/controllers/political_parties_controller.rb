class PoliticalPartiesController < ApplicationController
  before_filter :authenticate_user!

  def new
    @political_party = PoliticalParty.new
  end

  def create
    @political_party = PoliticalParty.new(political_party_params)

    if @political_party.save
      redirect_to @political_party, notice: "El partido político se creó correctamente."
    else
      render :new
    end
  end

  def edit
    @political_party = PoliticalParty.find(params[:id])
  end

  def update
    @political_party = PoliticalParty.find(params[:id])
    if @political_party.update_attributes(political_party_params)
      redirect_to @political_party, notice: "El partido político se actualizó correctamente."
    else
      render :edit
    end
  end

  def show
    @political_party = PoliticalParty.find(params[:id])
  end

  def index
    @political_parties = PoliticalParty.all
  end

  def destroy
    PoliticalParty.find(params[:id]).destroy
    redirect_to political_parties_path, notice: "El partido político se ha eliminado correctamente."
  end

  private

  def political_party_params
    params.require(:political_party).permit(:name, :abbreviation, :color)
  end
end
