class DeviseCreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.references :profileable, polymorphic: true, index: true

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      t.timestamps null: false
    end

    add_index :profiles, :email,                unique: true
    add_index :profiles, :reset_password_token, unique: true
    add_index :profiles, :confirmation_token,   unique: true
    add_index :profiles, :unlock_token,         unique: true
  end
end
