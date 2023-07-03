class CreateServiceProvisions < ActiveRecord::Migration[7.0]
  def change
    create_table :service_provisions do |t|
      t.string :name
      t.string :description
      t.string :status
      t.float :quota
      t.json :comment
      t.references :service_provision, null: false, foreign_key: true

      t.timestamps
    end
  end
end
