class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :genre
      t.integer :pages
      t.integer :year

      t.timestamps
    end
  end
end
