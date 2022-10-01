class UsersController < ApplicationController
    def show
        id_user = User.find_by(id: params[:id])
        render json: id_user, include: :items
    end
end
