class UsersController < ApplicationController
  skip_before_action :profilecompleteduser, only: [:profile, :update]
   # skip_before_action :authenticate_user!, only: :show
 before_action :set_users, only: [:edit, :update]
 # after_create :host_mail_confirmation
 def new
    @user = User.new
 end

 def create
  @user = User.new(user_params)
  if @user.save
    redirect user_path(@user)
  else
    render :new
  end
 end

 def profile
  @user = current_user
 end

 def edit
 end

 def update
   @user.update(user_params)
   if @user.save
    redirect_to root_path
  else
    render :new
  end
 end

 private

 def set_users
   @user = User.find(params[:id])
 end

 def user_params
  params.require(:user).permit(:email, :password, :first_name, :last_name, :gender, :i_am, :i_like, :i_look_for, :status, :age, :attracted_by)
 end


end
