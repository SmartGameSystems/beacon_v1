class RemoveLastSignInIpFromProfiles < ActiveRecord::Migration[5.1]
  def change
    remove_column :profiles, :last_sign_in_ip, :string
  end
end
