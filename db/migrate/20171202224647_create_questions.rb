class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :body
      t.belongs_to :virtualform

      t.timestamps
    end
  end
end
