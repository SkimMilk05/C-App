class CreatePreSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :pre_surveys do |t|

      t.timestamps
    end
  end
end
