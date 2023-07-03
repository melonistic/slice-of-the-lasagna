class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.references :category, null: false, foreign_key: true
      t.string :reference_api

      t.timestamps
    end
  end
end
