class CreateBusinessQuestionAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :business_question_answers do |t|
      t.belongs_to :business, null: false, foreign_key: true
      t.belongs_to :business_question, null: false, foreign_key: true
      t.string :answer

      t.timestamps
    end
  end
end
