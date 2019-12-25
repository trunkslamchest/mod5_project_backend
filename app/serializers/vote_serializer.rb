class VoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :question_id, :vote_num
end
