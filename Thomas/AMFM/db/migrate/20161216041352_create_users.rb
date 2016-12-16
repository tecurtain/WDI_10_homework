class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :bio
      t.string :phone
      t.integer :age
      t.string :profile_image

      t.timestamps
    end
  end
end
