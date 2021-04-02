class CreatePeriods < ActiveRecord::Migration[6.0]
  def change
    create_table :periods do |t|
      t.string :name
      t.date :initial_date
      t.date :final_date
      t.boolean :status, defaults: true

      t.timestamps
    end
  end
end
