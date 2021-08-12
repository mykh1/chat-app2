class Message < ApplicationRecord
  belongs_to :room
  # 1つのメッセージは、1つのチャットルームに存在する。
  belongs_to :user
  # 1つのメッセージは、1人のユーザーから送信される。
  has_one_attached :image
  # has_one_attachedハズ ワン アタッチドメソッド
  # 上記を記述したモデルの各レコードは、それぞれ1つのファイルを添付できる

  validates :content, presence: true
  # バリデーション。「content」カラムに、presence: trueを設けることで、空の場合はDBに保存しない設定
end
