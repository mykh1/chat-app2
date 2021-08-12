class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :room_users
  # userは１対多でroom_usersと繋がる
  has_many :rooms, through: :room_users
  # userはスルーオプションでroom_usersを経由してroomと繋がる
  has_many :messages
  # userは１対多でmessagesと繋がる
  # 1人のユーザーは、複数のメッセージを送信できる

  validates :name, presence: true
  # 空の場合はdbに保存しない。ユーザー登録時に「name」を空欄にして登録しようとすると、エラーが発生する。

end
