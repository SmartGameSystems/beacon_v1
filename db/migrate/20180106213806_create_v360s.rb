class CreateV360s < ActiveRecord::Migration[5.1]
  def change
    create_table :v360s do |t|

      t.timestamps
    end
  end
end
