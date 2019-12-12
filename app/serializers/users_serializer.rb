class UsersSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user

  attribute :user do |user_obj|
    {
      user_name: user_obj.user_name,
      email: user_obj.email,
      access: user_obj.access,
      first_name: user_obj.first_name,
      last_name: user_obj.last_name,
      gender: user_obj.gender,
      birth_day: user_obj.birth_day,
      birth_month: user_obj.birth_month,
      birth_year: user_obj.birth_year,
      house_number: user_obj.house_number,
      street_name: user_obj.street_name,
      city_town: user_obj.city_town,
      state: user_obj.state,
      zip_code: user_obj.zip_code,
      join_day: user_obj.created_at.strftime("%e").to_i,
      join_month: user_obj.created_at.strftime("%B"),
      join_year: user_obj.created_at.strftime("%Y").to_i,
    }
  end
end
