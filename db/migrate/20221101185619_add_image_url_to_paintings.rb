class AddImageUrlToPaintings < ActiveRecord::Migration[7.0]
  def change
    add_column :paintings, :image_url, :string
  end
end
