class Add < ActiveRecord::Migration[5.0]
  def change
    change_table :comments do |t|
      t.belongs_to :post

    end
  end
end
