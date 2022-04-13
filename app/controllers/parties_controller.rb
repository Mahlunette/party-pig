class PartiesController < ApplicationController
  def show
    @party = Party.find(params[:id])
    @bucket = Bucket.new
    # render json: { party: @party, buckets: @party.buckets }
    render "show.json"
  end

  def new
    @party = Party.new
  end

  def create
    party = Party.new(party_params)
    if party.save
      redirect_to party_path(party)
    else
      render :new
    end
  end

  private

  def party_params
    params.require(:party).permit(:name)
  end

end
