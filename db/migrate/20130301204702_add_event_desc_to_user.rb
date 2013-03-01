class AddEventDescToUser < ActiveRecord::Migration
  def change
    add_column :users, :event_desc, :string
  end
end
