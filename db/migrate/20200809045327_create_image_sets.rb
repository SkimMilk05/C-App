class CreateImageSets < ActiveRecord::Migration[6.0]
  def change
    create_table :image_sets do |t|

      t.timestamps
    end
  end
end
