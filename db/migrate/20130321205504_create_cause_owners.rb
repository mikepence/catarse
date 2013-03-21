class CreateCauseOwners < ActiveRecord::Migration
  def change
    create_table :cause_owners do |t|

      t.timestamps
    end
  end
end
