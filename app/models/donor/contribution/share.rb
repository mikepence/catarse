class Donor::Contribution::Payment < ActiveRecord::Base
  belongs_to :donor_contribution, :class_name => 'Donor::Contribution'
  # attr_accessible :title, :body
end
