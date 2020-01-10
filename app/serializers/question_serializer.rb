class QuestionSerializer
  include FastJsonapi::ObjectSerializer

  attributes :question, :answers, :votes, :comments

  attribute :question do |question_obj|
    {
      id: question_obj.id,
      question_desc: question_obj.question_desc,
      difficulty: question_obj.difficulty,
      category: question_obj.category,
      correct_answer: question_obj.correct_answer,
      incorrect_answers: question_obj.incorrect_answers,
      # creation_day: question_obj.created_at.strftime("%e").to_i,
      # creation_month: question_obj.created_at.strftime("%B"),
      # creation_year: question_obj.created_at.strftime("%Y").to_i,
    }
  end
end
