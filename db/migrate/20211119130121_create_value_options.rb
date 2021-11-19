class CreateValueOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :value_options do |t|
      t.references :input
      t.string :value
      t.timestamps
    end
  end
end
