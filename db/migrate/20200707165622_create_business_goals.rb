class CreateBusinessGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :business_goals do |t|
      t.string :title
      t.string :description
      t.string :status, :default => "Not Started"
      t.string :steps
      t.belongs_to :business_question_answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
