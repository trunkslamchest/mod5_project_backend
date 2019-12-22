class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_digest
      t.string :email
      t.string :access, :default => "normal"
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :birth_day
      t.string :birth_month
      t.integer :birth_year
      t.integer :house_number
      t.string :street_name
      t.string :city_town
      t.string :state
      t.integer :zip_code
      t.timestamps
    end
  end
end
