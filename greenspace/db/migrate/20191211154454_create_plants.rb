class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :scientific_name
      t.string :water_schedule
      t.string :fertilizer_schedule
      t.string :info
      t.string :image_url
      t.string :category

      t.timestamps
    end
  end
end
