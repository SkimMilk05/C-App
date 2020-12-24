class CreatePreSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :pre_surveys do |t|
      t.belongs_to :user, index: true

      t.text :Q1
      t.text :Q2
      t.text :Q3
      t.text :Q4
      t.text :Q5
      t.text :Q6
      t.text :Q7
      t.text :Q8
      t.text :Q9


      t.timestamps
    end
  end
end
