FactoryBot.define do
  factory :message do
    # ユーザーのテストで使う値を作る（factory）
    # 以下sequel pro の usersに書かれたカラムの名前を書く。
    content {Faker::Lorem.sentence}
    # Fakerでランダムに値を生成。
    # {}の中はカラムに入れる値を書く。
    # {}書き方はGitHubにサンプル定型文があるので覚える必要はない。
    association :user
    association :room
    # アソシエーション。
    # :user と :room はカラムの user_id と room_idのこと

    after(:build) do |message|
    # afterメソッドは任意の処理の後に指定の処理を実行すること。
    # after(:build) とすることで、インスタンスがbuildされた後に指定の処理を実行
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    # messageのimageを添付（File.open はこれから使うファイル（どこに入っているファイル）で,filename(保存するファイルの名前)は’’である。という記述
    end

  end
end