class ChangeHeightToString < ActiveRecord::Migration[5.0]
  def change
    change_column :people, :height, :string
  end
end
