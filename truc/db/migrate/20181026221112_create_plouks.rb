class CreatePlouks < ActiveRecord::Migration[5.2]
  def change
    create_table :plouks do |t|

      t.timestamps
    end
  end
end
