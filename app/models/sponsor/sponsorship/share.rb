class Donor::Contribution::Payment < ActiveRecord::Base

  belongs_to :sponsor_sponsorship, :class_name => 'Sponsor::Sponsorship'
  # attr_accessible :title, :body
end
