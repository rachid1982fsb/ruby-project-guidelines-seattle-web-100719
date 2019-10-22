class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.date :birthdate
      t.integer :grade
      t.string :gender
      t.boolean :still_in_school 
    end
  end
end
