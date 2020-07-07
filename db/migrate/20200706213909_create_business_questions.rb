class CreateBusinessQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :business_questions do |t|
      t.string :question

      t.timestamps
    end
  end
end
