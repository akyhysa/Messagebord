class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :message, index: true, foreign_key: true
      t.integer :user_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
