class CreateImageSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :image_sessions do |t|
      t.float :score
      t.timestamp :start_time
      t.timestamp :end_time
      t.time :total_time

      t.belongs_to :user, index: true 
      t.belongs_to :image, index: true

      t.timestamps
    end
  end
end
