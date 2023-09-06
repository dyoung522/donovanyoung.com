class CreatePositions < ActiveRecord::Migration[7.0]
  def change
    create_table :positions do |t|
      t.references :company, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :end_reason
      t.boolean :always_show
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
