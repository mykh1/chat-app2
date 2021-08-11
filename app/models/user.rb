class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true
  # 空の場合はdbに保存しない。ユーザー登録時に「name」を空欄にして登録しようとすると、エラーが発生する。

end
