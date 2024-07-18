class UsersController < ApplicationController
    def show
        @user = User.find(params[:id]) 
        @visuals = Visual.all
    end
end
