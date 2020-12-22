class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.belongs_to :user, index: true


      t.boolean :pre_test
      t.integer :questions_correct

      t.timestamps
    end
  end
end
