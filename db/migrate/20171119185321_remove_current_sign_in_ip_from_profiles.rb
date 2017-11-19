class RemoveCurrentSignInIpFromProfiles < ActiveRecord::Migration[5.1]
  def change
    remove_column :profiles, :current_sign_in_ip, :string
  end
end
