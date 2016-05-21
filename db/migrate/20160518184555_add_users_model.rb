class AddUsersModel < ActiveRecord::Migration
  
  def change
    # Add code to create the table here
    # HINT: check out ActiveRecord::Migration.create_table
    create_table :users do |t|
      # column definitions go here
      t.column :username, :string
      t.column :email, :string
      t.column :phone, :string
      t.column :password, :string
      t.timestamps
    end
  end
end