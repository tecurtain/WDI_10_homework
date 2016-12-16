class CreateFestivals < ActiveRecord::Migration[5.0]
  def change
    create_table :festivals do |t|
      t.string :name
      t.string :location
      t.date :date
      t.decimal :cost

      t.timestamps
    end
  end
end
