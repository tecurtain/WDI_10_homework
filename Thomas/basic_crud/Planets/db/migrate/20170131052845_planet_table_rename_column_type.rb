class PlanetTableRenameColumnType < ActiveRecord::Migration[5.0]
  def change
    rename_column :planets, :type, :surface
  end
end
