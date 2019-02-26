class CreateControls < ActiveRecord::Migration[5.2]
  def change
    create_table :controls do |t|
      t.string :name
      t.string :description
      t.string :code
      t.integer :status
      t.string :mitigation
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
