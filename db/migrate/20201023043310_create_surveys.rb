class CreateSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :surveys do |t|
      t.integer :level
      t.integer :school
      t.integer :speciality
      t.integer :obgyn
      t.integer :lectures
      t.string :training
      t.integer :experience
      t.integer :prepared
      t.integer :rate

      t.belongs_to :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
