class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :category
      t.string :difficulty
      t.string :question_desc
      t.string :correct_answer
      t.string :incorrect_answers, array: true, default: []

      t.timestamps
    end
  end
end
