class CreateTraffics < ActiveRecord::Migration[5.2]
  def change
    create_table :traffics do |t|
      t.integer :user_id
      t.string :interaction
      t.string :element

      t.timestamps
    end
  end
end
