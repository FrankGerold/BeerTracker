class CreateFloors < ActiveRecord::Migration[6.0]
  def change
    create_table :floors do |t|
      t.string :building
      t.integer :floor_number

      t.timestamps
    end
  end
end
