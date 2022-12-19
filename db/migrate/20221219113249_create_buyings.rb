class CreateBuyings < ActiveRecord::Migration[7.0]
  def change
    create_table :buyings do |t|
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true
      t.references :prestation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
