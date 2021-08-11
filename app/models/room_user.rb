class RoomUser < ApplicationRecord
  belongs_to :room
  belongs_to :user
  # １対１一人のユーザーは一つのルームと繋がる。


end
