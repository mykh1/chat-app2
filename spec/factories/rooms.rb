FactoryBot.define do
  factory :room do
  # ユーザーのテストで使う値を作る（factory）
  # 以下sequel pro の usersに書かれたカラムの名前を書く。
    name {Faker::Team.name}
    # Fakerでランダムに値を生成。
    # {}の中はカラムに入れる値を書く。
    # {}書き方はGitHubにサンプル定型文があるので覚える必要はない。
  end
end