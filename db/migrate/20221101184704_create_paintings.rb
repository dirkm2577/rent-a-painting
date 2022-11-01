class CreatePaintings < ActiveRecord::Migration[7.0]
  def change
    create_table :paintings do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.boolean :booking_status

      t.timestamps
    end
  end
end
