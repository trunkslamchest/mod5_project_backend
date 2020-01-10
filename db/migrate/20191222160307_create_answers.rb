class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :question_id
      t.string :user_answer
      t.string :user_result
      t.decimal :user_time, precision: 10, scale: 2

      t.timestamps
    end
  end
end
