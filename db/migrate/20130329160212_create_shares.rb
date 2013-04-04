class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.references :contribution

      t.timestamps
    end
    add_index :shares, :contribution_id
  end
end
