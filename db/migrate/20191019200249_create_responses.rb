class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.text :response
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
