class BucketsController < ApplicationController
  def create
    bucket = Bucket.new(bucket_params)
    bucket.party = Party.find(params[:party_id])
    @party = Party.find(params[:party_id])
    respond_to do |format|
      if bucket.save
        format.html { redirect_to party_path(@party) }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html { render "parties/show", party: @party }
      end
    end
  end

  def update
  end

  private

  def bucket_params
    params.require(:bucket).permit(:name)
  end
end
