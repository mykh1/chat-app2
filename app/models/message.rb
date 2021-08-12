class Message < ApplicationRecord
  belongs_to :room
  # 1つのメッセージは、1つのチャットルームに存在する。
  belongs_to :user
  # 1つのメッセージは、1人のユーザーから送信される。

  validates :content, presence: true
  # バリデーション。「content」カラムに、presence: trueを設けることで、空の場合はDBに保存しない設定
end
