class CreateSubmits < ActiveRecord::Migration[7.0]
  def change
    create_table :submits do |t|
      t.text :question
      t.date :date
      t.timestamps
    end
  end
end
