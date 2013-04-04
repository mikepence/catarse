class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.references :contribution

      t.timestamps
    end
    add_index :levels, :contribution_id
  end
end
