class TrafficSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :interaction, :element
end
