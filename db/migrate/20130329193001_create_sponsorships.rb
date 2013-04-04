class CreateSponsorships < ActiveRecord::Migration
  def change
    create_table :sponsorships do |t|
      t.references :sponsors

      t.timestamps
    end
    add_index :sponsorships, :sponsor_id
  end
end
