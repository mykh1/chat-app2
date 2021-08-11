class Message < ApplicationRecord
  belongs_to :room
  # 1つのメッセージは、1つのチャットルームに存在する。
  belongs_to :user
  # 1つのメッセージは、1人のユーザーから送信される。
end
