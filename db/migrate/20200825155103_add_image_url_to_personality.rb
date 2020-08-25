class AddImageUrlToPersonality < ActiveRecord::Migration[6.0]
  def change
    add_column :personalities, :image_url, :string
  end
end
