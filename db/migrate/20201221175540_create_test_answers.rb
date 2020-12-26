class CreateTestAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :test_answers do |t|
      t.belongs_to :test, index: true

       t.text :letter
       t.text :answer

       t.boolean :correct

      t.timestamps
    end
  end
end
