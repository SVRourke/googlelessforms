class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.references :submission
      t.string :name
      t.string :value
      t.timestamps
    end
  end
end