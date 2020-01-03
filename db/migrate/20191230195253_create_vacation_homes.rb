class CreateVacationHomes < ActiveRecord::Migration[6.0]
  def change
    create_table :vacation_homes do |t|
      t.string :name
      t.references :owner, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
