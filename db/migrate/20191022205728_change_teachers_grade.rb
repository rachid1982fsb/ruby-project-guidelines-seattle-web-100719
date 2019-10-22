class ChangeTeachersGrade < ActiveRecord::Migration[5.0]
  def change
    change_column(:teachers, :grade, :string)
  end
end
