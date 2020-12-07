class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
    # @user = User.find_(id: 1)
    end
end
