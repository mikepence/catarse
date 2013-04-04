class Donor < ActiveRecord::Base
  has_many :contributions
  attr_accessible :name
end
