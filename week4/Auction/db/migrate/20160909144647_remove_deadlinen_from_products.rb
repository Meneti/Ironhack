class RemoveDeadlinenFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :deadlinen, :dat
  end
end
