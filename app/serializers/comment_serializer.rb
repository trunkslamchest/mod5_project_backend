class CommentSerializer
  include FastJsonapi::ObjectSerializer
  # attributes :id, :user_id, :question_id, :comment_text
  attributes :comment


  attribute :comment do |comment_obj|
    {
      id: comment_obj.id,
      user_id: comment_obj.user_id,
      user_name: comment_obj.user_name,
      question_id: comment_obj.question_id,
      comment_test: comment_obj.comment_text,
      # creation_day: question_obj.created_at.strftime("%e").to_i,
      # creation_month: question_obj.created_at.strftime("%B"),
      # creation_year: question_obj.created_at.strftime("%Y").to_i,
    }
  end
end
