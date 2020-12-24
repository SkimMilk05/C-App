class CreatePreSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :pre_surveys do |t|
      t.belongs_to :user, index: true

      t.text :Q1, null: false
      t.text :Q2, null: false
      t.text :Q3, null: false
      t.text :Q4, null: false
      t.text :Q5, null: false
      t.text :Q6_Lectures
      t.text :Q6_Online_modules
      t.text :Q6_Hands_on_simulation
      t.text :Q6_Web_based_simulation
      t.text :Q6_Chalk_talk
      t.text :Q6_Case_based_teaching
      t.text :Q6_Other
      t.text :Q6_Other_value
      t.text :Q7, null: false
      t.text :Q8, null: false
      t.text :Q9, null: false


      t.timestamps
    end
  end
end
