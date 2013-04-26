class Cause < ActiveRecord::Base
  attr_accessible :name

  has_many :campaign_worksheets
end
