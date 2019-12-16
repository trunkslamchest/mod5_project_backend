class PageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :page_name, :timestamp

    attribute :timestamp do |page_obj|
    {
      hour: page_obj.created_at.strftime("%l"),
      minute: page_obj.created_at.strftime("%0M"),
      second: page_obj.created_at.strftime("%0S"),
      day_night: page_obj.created_at.strftime("%p"),
      day: page_obj.created_at.strftime("%e").to_i,
      month: page_obj.created_at.strftime("%m").to_i,
      year: page_obj.created_at.strftime("%y").to_i,
    }
  end
end
