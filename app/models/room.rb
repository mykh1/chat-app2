class Room < ApplicationRecord
  has_many :room_users
  # roomは１対多でroom_usersと繋がる
  has_many :users, through: :room_users
  # roomはスルーオプションでroom_usersを経由してuserと繋がる
end
