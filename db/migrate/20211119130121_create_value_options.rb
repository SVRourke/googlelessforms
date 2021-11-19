class CreateValueOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :value_options do |t|

      t.timestamps
    end
  end
end
