FactoryBot.define do
  factory :user do
    # ユーザーのテストで使う値を作る（factory）
    # 以下sequel pro の usersに書かれたカラムの名前を書く。
    name {Faker::Name.last_name}
    # Fakerでランダムに値を生成。
    # {}の中はカラムに入れる値を書く。
    # {}書き方はGitHubにサンプル定型文があるので覚える必要はない。
    email {Faker::Internet.free_email}
    # emailはGitHubのインターネットに入っている。
    password = Faker::Internet.password(min_length: 6)
    # パスワードは２回書くため上記で変数化する。
    password {password}
    password_confirmation {password}
    # passwordは変数化されたものを{}に入力すればOK
  end
end