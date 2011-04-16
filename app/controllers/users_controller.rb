class UsersController < ApplicationController
  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new
 end
  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])
    @user.username = @user.email
    @user.isnotificationsubscribed = true
    if @user.save
      flash[:notice] = 'Registration successfully completed.'
      redirect_to root_url
    else
      render :action => "new"
    end
  end
  def edit
    @user = current_user
  end
  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = current_user
      if @user.update_attributes(params[:user])
        redirect_to(@user, :notice => 'Your profile updated successfully.')
        redirect_to root_url
      else
        render :action => "edit"
      end
  end
  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to(users_url)
  end
end
