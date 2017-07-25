class AddLocationAndContactToStores < ActiveRecord::Migration[5.1]
  def change
    add_column(:stores, :location,:varchar)
    add_column(:stores, :contact,:integer)
  end
end
