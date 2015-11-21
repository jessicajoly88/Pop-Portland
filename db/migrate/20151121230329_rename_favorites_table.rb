class RenameFavoritesTable < ActiveRecord::Migration
  def change
    rename_table :favorites_tables, :favorites
  end
end
