class AddRatingToCocktails < ActiveRecord::Migration[5.1]
  def change
    add_column :cocktails, :rating, :integer
  end
end
