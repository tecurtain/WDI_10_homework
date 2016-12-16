class AddImageColumnsToFestivals < ActiveRecord::Migration[5.0]
  def change
    add_column :festivals, :image_url, :text
  end
end
