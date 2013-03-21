class CreateStudentCofunders < ActiveRecord::Migration
  def change
    create_table :student_cofunders do |t|
      t.string :name

      t.timestamps
    end
  end
end
