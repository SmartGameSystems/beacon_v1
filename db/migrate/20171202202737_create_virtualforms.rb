class CreateVirtualforms < ActiveRecord::Migration[5.1]
  def change
    create_table :virtualforms do |t|
      t.integer :formable_id
      t.string :formable_type

      t.timestamps
    end
  end
end
