class RenameEventsUsersTable < ActiveRecord::Migration
  def change
    rename_table :events_users, :favorites
  end
end
