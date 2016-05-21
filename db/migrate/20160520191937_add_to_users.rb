class AddToUsers < ActiveRecord::Migration
  def change
    add_column :users, :communication_method, :string
  end
end
