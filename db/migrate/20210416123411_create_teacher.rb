class CreateTeacher < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.integer :id_type, null: false
      t.string :id_number, null: false
      t.string :name, null: false
      t.string :surname, null: false
      t.date :birth_date
      t.string :cellphone_number
      t.string :email
      t.text :observation
      t.date :hire_date
      t.date :ordinary_date
      t.boolean :status, null: false
      t.belongs_to :teacher_category, null: false, foreign_key: true
    end
  end
end
