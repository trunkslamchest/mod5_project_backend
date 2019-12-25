class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :question_id
      t.integer :vote_num

      t.timestamps
    end
  end
end
