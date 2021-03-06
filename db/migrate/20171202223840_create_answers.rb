class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.text :body
      t.belongs_to :question, index: true
      t.belongs_to :contact, index: true
      t.belongs_to :client, index: true

      t.timestamps
    end
  end
end
