class AddMissingDateAndPlaceToPerson < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :missing_date, :date
    add_column :people, :place, :string
  end
end
