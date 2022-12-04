class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.text :title, null: false
      t.text :body, null: false
      t.integer :votes, null: false, default: 0
      t.references(:user, index: true, foreign_key: true)
      t.timestamps
    end
  end
end
