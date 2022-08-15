class Admin::RoomTypesController < Admin::BaseController
  def index
    @pagy, @room_types = pagy RoomType.all, page: params[:page], items: 5
  end

  def show
    @room_type = RoomType.find_by id: params[:id]
    @list_rooms = @room_type.rooms.all
  end
end
