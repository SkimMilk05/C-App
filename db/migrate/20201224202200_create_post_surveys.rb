class CreatePostSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :post_surveys do |t|
      t. belongs_to :user, index: true

      t.text :Q1, null: false
      t.text :Q2, null: false
      t.text :Q3, null: false

      t.timestamps
    end
  end
end
