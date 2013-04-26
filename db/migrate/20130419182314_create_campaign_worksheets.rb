class CreateCampaignWorksheets < ActiveRecord::Migration
  def change
    create_table :campaign_worksheets do |t|
      t.references :cause
      t.references :category
      t.references :user
      t.string :title
      t.text :short_description
      t.string :campaign_link
      t.string :country
      t.string :city
      t.integer :goal
      t.integer :days
      t.string :primary_media
      t.text :pitch

      t.timestamps
    end
  end
end
