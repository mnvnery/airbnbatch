class CreateUserReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :user_reviews do |t|
      t.references :booking, null: false, foreign_key: true
      t.integer :rating
      t.text :comment

      t.timestamps
    end
  end
end
