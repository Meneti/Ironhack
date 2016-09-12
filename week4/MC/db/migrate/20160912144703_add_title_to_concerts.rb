class AddTitleToConcerts < ActiveRecord::Migration[5.0]
  def change
    add_column :concerts, :artist, :string
  end
end
