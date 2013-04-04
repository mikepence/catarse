class Sponsor::Sponsorship < ActiveRecord::Base

  has_many :sponsor_sponsorship_coupons, :class_name => 'Sponsor::Sponsorship::Coupon'

end