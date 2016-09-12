class AddDateToConcerts < ActiveRecord::Migration[5.0]
  def change
    add_column :concerts, :date, :datetime
  end
end
