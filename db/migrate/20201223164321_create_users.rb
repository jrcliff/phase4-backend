class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :profile_pic
      t.string :current_games

      t.timestamps
    end
  end
end
