class CreateRents < ActiveRecord::Migration[6.0]
  def change
    create_table :rents do |t|
      t.string :location
      t.integer :duration
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
