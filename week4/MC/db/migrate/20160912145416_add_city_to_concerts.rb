class AddCityToConcerts < ActiveRecord::Migration[5.0]
  def change
    add_column :concerts, :city, :string
  end
end
