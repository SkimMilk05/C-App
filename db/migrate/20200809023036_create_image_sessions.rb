class CreateImageSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :image_sessions do |t|
      t.integer :greenAreasClickedRight
      t.integer :blueAreasClickedRight
      t.integer :greenAreasClickedWrong
      t.integer :blueAreasClickedWrong
      t.integer :colorlessAreasClicked
    

      t.belongs_to :user, index: true
      t.belongs_to :image, index: true

      t.timestamps
    end
  end
end
