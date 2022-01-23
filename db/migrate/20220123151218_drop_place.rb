class DropPlace < ActiveRecord::Migration[5.2]
  def change
    drop_table :places
  end
end
