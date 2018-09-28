class CreateHistorics < ActiveRecord::Migration[5.2]
  def change
    create_table :historics do |t|
      t.references :users, foreign_key: true
      t.references :exchanges, foreign_key: true
      t.references :currencies, foreign_key: true
      t.date :date
      t.decimal :value

      t.timestamps
    end
  end
end
