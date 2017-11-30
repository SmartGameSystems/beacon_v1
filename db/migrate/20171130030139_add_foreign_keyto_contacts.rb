class AddForeignKeytoContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :coach_id, :integer
  end
end
