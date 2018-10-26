class TableTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests
    add_column :tests, :test_string, :string
  end
end
