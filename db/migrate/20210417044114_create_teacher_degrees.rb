class CreateTeacherDegrees < ActiveRecord::Migration[6.0]
  def change
    create_table :teacher_degrees do |t|
      t.string :name, null: false
      t.integer :degree_type, null: false
      t.boolean :status, null: false
      t.belongs_to :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
