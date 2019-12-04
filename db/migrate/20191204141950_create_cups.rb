class CreateCups < ActiveRecord::Migration[6.0]
  def change
    create_table :cups do |t|
      t.integer :rating
      t.belongs_to :user, null: false
      t.belongs_to :keg, null: false

      t.timestamps
    end
  end
end
