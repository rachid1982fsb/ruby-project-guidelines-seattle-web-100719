class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :subject
      t.integer :grade
      t.date :birthdate
      t.boolean :still_in_school 
    end
  end
end
