class AddPriceToConcerts < ActiveRecord::Migration[5.0]
  def change
    add_column :concerts, :price, :integer
  end
end
