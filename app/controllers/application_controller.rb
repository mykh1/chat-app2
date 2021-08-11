class ApplicationController < ActionController::Base
  before_action :authenticate_user! 
  # オウセンティケイトユーザーメソッド。ユーザーがログインしていなければ、そのユーザーをログイン画面に遷移させる。
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  # サインアップ時に、ユーザーの名前を登録
  def configure_permitted_parameters # メソッド名は慣習
    # deviseのUserモデルにパラメーターを許可.deviseにおけるparamsのようなメソッド。devise(Gem)が編集できないため
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  # devise_parameter_sanitizer.permit(:deviseの処理名, keys: [:許可するキー])
  end

end
