class ChangeColumnInStudentsTaechers < ActiveRecord::Migration[5.0]
  def change
    rename_column :students_teachers, :garde, :grade
  end
end
