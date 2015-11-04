class ChangeColumnNameVenues < ActiveRecord::Migration
  def change
    rename_column :venues, :lattitude, :latitude
  end
end
