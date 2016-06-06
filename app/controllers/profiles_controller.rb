class ProfilesController < ApplicationController
	before_action :user

  def index
  end

  def show
  end

  def new
  	@profile = Profile.new
  end

  def create
  	@profile = Profile.new(profile_params)
  	@profile.user_id = current_user.id
  	if @profile.save
  		redirect_to profile_path(@profile)
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  end


  def destroy
  end


  private

  def profile_params
  	params.require(:profile).permit(:age, :episode, :character, :bio)
  end

  def user
  	@user = current_user
  end

end
