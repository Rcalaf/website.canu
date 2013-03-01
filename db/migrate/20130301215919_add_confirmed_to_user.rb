class AddConfirmedToUser < ActiveRecord::Migration
  def change
    add_column :users, :email_confirm, :boolean
  end
end
