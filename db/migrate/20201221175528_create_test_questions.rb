class CreateTestQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :test_questions do |t|
      t.belongs_to :test, index: true


      t.boolean :active
      t.string :question
      t.string :correct_ans

      t.string :img_url

      t.timestamps
    end
  end
end
