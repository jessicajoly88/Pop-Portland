class AddColumnsVenues < ActiveRecord::Migration
  def change
    add_column :venues, :longitude, :float
    add_column :venues, :lattitude, :float
  end
end
