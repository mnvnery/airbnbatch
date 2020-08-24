class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :language
      t.string :email
      t.string :phone
      t.date :birthdate

      t.timestamps
    end
  end
end
