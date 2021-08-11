class RoomsController < ApplicationController

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
      # 保存が成功するとルートパスにリダイレクト
    else
      render :new
      # 保存が失敗するとrooms/new.html.erbのページを表示
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end

end
