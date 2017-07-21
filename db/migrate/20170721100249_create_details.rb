class CreateDetails < ActiveRecord::Migration[5.1]
  def change
    create_table(:details) do |t|
      t.column(:shoe_id, :integer)
      t.column(:store_id, :integer)
      t.column(:time_released, :datetime)
      t.timestamps()
    end
  end
end
