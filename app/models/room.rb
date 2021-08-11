class Room < ApplicationRecord
  has_many :room_users
  # roomは１対多でroom_usersと繋がる
  has_many :users, through: :room_users
  # roomはスルーオプションでroom_usersを経由してuserと繋がる
  has_many :messages
  # roomは１対多でmessagesと繋がる  
  # 1つのチャットルームに、メッセージは複数存在する
  validates :name, presence: true
  # ルーム名が存在（presence）している場合のみ作成可（true）



end
