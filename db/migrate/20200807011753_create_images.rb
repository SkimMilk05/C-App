class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :green_coordinates
      t.string :blue_coordinates
      t.timestamps
    end
  end
end
