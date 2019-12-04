class CreateKegs < ActiveRecord::Migration[6.0]
  def change
    create_table :kegs do |t|
      t.string :name
      t.string :beer_type

      t.timestamps
    end
  end
end
