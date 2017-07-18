class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit]
  before_action :authenticate_user!


  private

  def set_profile
    @profile = current_user.profile
  end

end
