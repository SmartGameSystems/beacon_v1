class AddFieldsToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :username, :string
    add_column :profiles, :first_name, :string
    add_column :profiles, :last_name, :string
    add_column :profiles, :phone, :string
    add_column :profiles, :profileable_id, :integer
    add_column :profiles, :profileable_type, :string
  end
end
