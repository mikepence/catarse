class CampaignWorksheet < ActiveRecord::Base
  attr_accessible :cause,
                  :campaign_id, :category_id, :user_id

  belongs_to :cause
  belongs_to :category
  belongs_to :user

  validates_presence_of :cause


end
