class CreateTestOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :test_options do |t|
      t.belongs_to :test_question, index: true

      t.string :letter
       t.string :text
       t.string :img_url

      t.timestamps
    end
  end
end
