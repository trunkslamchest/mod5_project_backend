class AnswerSerializer
  include FastJsonapi::ObjectSerializer
  # attributes :id, :user_id, :question_id, :user_answer, :user_result

  attributes :answer

  attribute :answer do |answer_obj|
    {
      id: answer_obj.id,
      user_id: answer_obj.user_id,
      question_id: answer_obj.question_id,
      user_answer: answer_obj.user_answer,
      user_result: answer_obj.user_result,
      # creation_day: question_obj.created_at.strftime("%e").to_i,
      # creation_month: question_obj.created_at.strftime("%B"),
      # creation_year: question_obj.created_at.strftime("%Y").to_i,
    }
  end

end
