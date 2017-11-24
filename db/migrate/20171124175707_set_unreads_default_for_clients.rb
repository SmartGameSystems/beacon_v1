class SetUnreadsDefaultForClients < ActiveRecord::Migration[5.1]
  def change
    change_column :clients, :unreads, :integer, default: 0
  end
end
