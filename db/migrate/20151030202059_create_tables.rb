class CreateTables < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :venue_id
      t.integer :act_id 
      t.string :time_period
      t.string :date

      t.timestamps
    end

    create_table :acts do |t|
      t.string :name
      t.string :image
      t.string :genre
      t.string :description
      t.string :website 
    end
  
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :description
    end
  end
end
