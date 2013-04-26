class CampaignWorksheet < ActiveRecord::Base
  attr_accessible :campaign_id, :category_id, :user_id

  belongs_to :cause
  belongs_to :category
  belongs_to :user
end
