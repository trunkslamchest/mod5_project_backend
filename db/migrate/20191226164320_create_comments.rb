class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :user_name
      t.integer :question_id
      t.string :comment_text, default: ""

      t.timestamps
    end
  end
end
