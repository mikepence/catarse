class Sponsor::Sponsorship::Coupon < ActiveRecord::Base

  belongs_to :sponsor_sponsorship, :class_name => 'Sponsor::Sponsorship'

end