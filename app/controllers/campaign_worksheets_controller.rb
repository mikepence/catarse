class CampaignWorksheetsController < ApplicationController

  def new
    @campaign_worksheet = CampaignWorksheet.create
  end

  def create
    @campaign_worksheet = CampaignWorksheet.create(params[:campaign_worksheet])
    # TODO, make it validate and re-direct accordingly
    redirect_to edit_campaign_worksheet_path(cw.id)
  end

  def edit
    @campaign_worksheet = CampaignWorksheet.find(params[:id])
  end

  def update
    @campaign_worksheet = CampaignWorksheet.find(params[:id])
  end
end
