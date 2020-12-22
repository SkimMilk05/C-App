class CreateTestOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :test_options do |t|
      t.belongs_to :test_question, index: true

      t.text :letter
       t.text :text
       t.text :img_url

      t.timestamps
    end
  end
end
