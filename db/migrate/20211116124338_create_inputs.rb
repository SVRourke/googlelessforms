class CreateInputs < ActiveRecord::Migration[6.1]
  def change
    create_table :inputs do |t|
      t.string :inputType
      t.string :label
      t.string :name
      t.boolean :required, default: false
      t.references :form
      t.timestamps
    end
  end
end
