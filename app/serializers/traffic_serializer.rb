class TrafficSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :interaction, :element, :timestamp

  attribute :timestamp do |traffic_obj|
    {
      hour: traffic_obj.created_at.strftime("%l"),
      minute: traffic_obj.created_at.strftime("%0M"),
      second: traffic_obj.created_at.strftime("%0S"),
      day_night: traffic_obj.created_at.strftime("%p"),
      day: traffic_obj.created_at.strftime("%e").to_i,
      month: traffic_obj.created_at.strftime("%m").to_i,
      year: traffic_obj.created_at.strftime("%y").to_i,
    }
  end
end
