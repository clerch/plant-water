class DropMessages < ActiveRecord::Migration
  def change
    drop_table :messages
    remove_column :notifications, :message_id
    add_column :notifications, :message_content, :string
  end
end
