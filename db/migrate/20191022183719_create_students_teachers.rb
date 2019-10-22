class CreateStudentsTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :students_teachers do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.string :garde
      t.string :subject
      t.string :subject_name
      t.string :classroom
    end
  end
end
