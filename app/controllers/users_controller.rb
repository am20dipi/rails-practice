class UsersController < ApplicationController

    # show

    # index
    def index
        @users = User.all
    end
    


    # about
    def about

    end

    def create
        @user = User.new(params[:user])
        if @user.save
          flash[:success] = "User successfully created"
          redirect_to @user
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update_attributes(params[:user])
          flash[:success] = "User was successfully updated"
          redirect_to @user
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end
    
    


end
