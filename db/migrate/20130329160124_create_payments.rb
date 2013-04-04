class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :contribution

      t.timestamps
    end
    add_index :payments, :contribution_id
  end
end
