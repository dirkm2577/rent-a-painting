class CreatePaintings < ActiveRecord::Migration[7.0]
  def change
    create_table :paintings do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.boolean :booking_accepted

      t.timestamps
    end
  end
end
