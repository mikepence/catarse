class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.references :donor

      t.timestamps
    end
    add_index :contributions, :donor_id
  end
end
