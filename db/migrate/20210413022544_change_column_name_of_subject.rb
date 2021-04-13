class ChangeColumnNameOfSubject < ActiveRecord::Migration[6.0]
  def change
    rename_column :subjects, :type, :subject_type
  end
end
