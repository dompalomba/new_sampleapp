class UsersController < ApplicationController
  def new
  end
  def show
    @user = User.find(params[:id])  
  end
    def new
        @user = User.new
    end
    def create
        @user = User.new(params[:user])
        if @user.save
            #save is successful
        else
            render 'new'
        end 
end
