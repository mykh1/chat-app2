class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      # リファレンシーズ型。Railsで外部キーのカラムを追加する際に用いる型のこと.
      # 今回の場合は:room,:nserが外部キーに当たる。
      # 「foreign_key: true」フォーリンキートゥルー
      # 外部キーを参照する役割と制約。room_usersとroomどちらにも同じデータが存在していて変更はできない。
      # 親レコードにない値は参照カラムに登録できない
      t.timestamps
    end
  end
end
