class CreateBlueAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :blue_areas do |t|
      t.string :coordinates

      t.belongs_to :image, index: true

      t.timestamps
    end
  end
end
