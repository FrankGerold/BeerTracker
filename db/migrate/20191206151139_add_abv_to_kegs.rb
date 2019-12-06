class AddAbvToKegs < ActiveRecord::Migration[6.0]
  def change
    add_column :kegs, :abv, :float
    add_column :kegs, :ibu, :integer
    add_column :kegs, :desc, :string
    add_column :kegs, :photo_url, :string
  end
end
