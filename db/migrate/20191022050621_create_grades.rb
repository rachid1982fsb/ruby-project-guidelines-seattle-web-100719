class CreateGrades < ActiveRecord::Migration[5.0]
  def change
    create_table :grades do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.string :term
      t.integer :year
      t.string :subject
      t.integer :percentage_grade
      t.string :letter_grade
    end
  end
end
