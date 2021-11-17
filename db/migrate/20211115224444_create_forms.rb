class CreateForms < ActiveRecord::Migration[6.1]
  def change
    create_table :forms do |t|
      t.belongs_to :user
      t.string :title
      t.timestamps
    end
  end
end
