class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.references :sponsorships

      t.timestamps
    end
    #add_index :coupons, :sponsorship_id
  end
end
