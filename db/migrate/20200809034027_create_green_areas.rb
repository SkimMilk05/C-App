class CreateGreenAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :green_areas do |t|
      t.text :coordinates

      t.belongs_to :image, index: true

      t.timestamps
    end
  end
end
