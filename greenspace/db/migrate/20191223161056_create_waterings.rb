class CreateWaterings < ActiveRecord::Migration[6.0]
  def change
    create_table :waterings do |t|
      t.integer :user_plant_id
      t.integer :user_id
      t.date :schedule

      t.timestamps
    end
  end
end
