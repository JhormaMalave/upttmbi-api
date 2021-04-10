class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string :name, null: false
      t.integer :trimester, null: false
      t.integer :shift, null: false
      t.belongs_to :course, null: false, foreign_key: true
      t.belongs_to :period, null: false, foreign_key: true

      t.timestamps
    end
  end
end
