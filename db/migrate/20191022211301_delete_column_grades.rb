class DeleteColumnGrades < ActiveRecord::Migration[5.0]
  def change
    remove_column :grades, :teacher_id
  end
end
