class CreateBusinessTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :business_types do |t|
      t.string :style

      t.timestamps
    end
  end
end
