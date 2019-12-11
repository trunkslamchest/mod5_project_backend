ActiveRecord::Schema.define(version: 2019_12_04_192224) do

  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password_digest"
    t.string "email"
    t.string "access", default: "normal"
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.integer "birth_day"
    t.string "birth_month"
    t.integer "birth_year"
    t.integer "house_number"
    t.string "street_name"
    t.string "city_town"
    t.string "state"
    t.integer "zip_code"
    t.date "created_at", null: false
  end

end
