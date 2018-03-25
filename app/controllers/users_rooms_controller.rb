class UsersRoomsController < ApplicationController
  before_action :set_users_room, only: [:show, :update, :destroy]

  # GET /users_rooms
  def index
    @users_rooms = UsersRoom.all

    render json: @users_rooms
  end

  # GET /users_rooms/1
  def show
    render json: @users_room
  end

  # POST /users_rooms
  def create
    @users_room = UsersRoom.new(users_room_params)

    if @users_room.save
      render json: @users_room, status: :created, location: @users_room
    else
      render json: @users_room.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users_rooms/1
  def update
    if @users_room.update(users_room_params)
      render json: @users_room
    else
      render json: @users_room.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users_rooms/1
  def destroy
    @users_room.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_room
      @users_room = UsersRoom.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def users_room_params
      params.require(:users_room).permit(:user_id, :rooms_id)
    end
end
