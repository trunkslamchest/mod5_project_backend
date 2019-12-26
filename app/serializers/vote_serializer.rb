class VoteSerializer
  include FastJsonapi::ObjectSerializer
  # attributes :id, :user_id, :question_id, :vote_num

  attributes :vote

  attribute :vote do |vote_obj|
    {
      id: vote_obj.id,
      user_id: vote_obj.user_id,
      question_id: vote_obj.question_id,
      vote_num: vote_obj.vote_num,
      # creation_day: vote_obj.created_at.strftime("%e").to_i,
      # creation_month: vote_obj.created_at.strftime("%B"),
      # creation_year: vote_obj.created_at.strftime("%Y").to_i,
    }
  end

end
