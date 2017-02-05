class CreatePlanets < ActiveRecord::Migration[5.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :type
      t.string :color

      t.timestamps
    end
  end
end
