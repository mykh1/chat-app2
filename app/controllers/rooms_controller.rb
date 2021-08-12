class RoomsController < ApplicationController

  def index
  end


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

  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to root_path
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end

end
