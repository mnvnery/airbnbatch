class AddNewFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :location, :string
    add_column :users, :language, :string
    add_column :users, :phone, :string
    add_column :users, :birthdate, :date
  end
end
