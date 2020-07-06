class CreateBusinessQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :business_questions do |t|
      t.string :question
      t.string :answer
      t.belongs_to :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
