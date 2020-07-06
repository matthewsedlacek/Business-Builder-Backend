class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :business_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
