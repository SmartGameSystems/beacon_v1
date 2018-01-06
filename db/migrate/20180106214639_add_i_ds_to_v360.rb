class AddIDsToV360 < ActiveRecord::Migration[5.1]
  def change
    add_column :v360s, :client_id, :integer
    add_column :v360s, :coach_id, :integer
    add_column :v360s, :formable_id, :integer
  end
end
