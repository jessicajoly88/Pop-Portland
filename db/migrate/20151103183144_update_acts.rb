class UpdateActs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :act_id
      t.string :url
      t.string :html

      t.timestamps
    end
  end
end
