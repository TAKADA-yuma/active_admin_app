class CreateSubmits < ActiveRecord::Migration[7.0]
  def change
    create_table :submits do |t|
      t.text :question
      t.text :answer
      t.integer :date
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
