class Donor::Contribution < ActiveRecord::Base
  belongs_to :donor
  has_one :donor_contribution_level, :class_name => 'Donor::Contribution::Level'
  has_one :donor_contribution_payment, :class_name => 'Donor::Contribution::Payment'
  has_one :donor_contribution_share, :class_name => 'Donor::Contribution::Share'

  # attr_accessible :title, :body
end
