class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :comment
      t.references :test_survey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
