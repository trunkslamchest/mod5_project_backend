class QuestionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :question_desc, :difficulty,:category, :correct_answer, :incorrect_answers
end
