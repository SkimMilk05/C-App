class CreateImageSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :image_sessions do |t|
      t.integer :greenRight
      t.integer :blueRight
      t.integer :greenWrong
      t.integer :blueWrong
      t.integer :colorlessWrong
      t.integer :greenLeft
      t.integer :blueLeft


      t.belongs_to :image, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
