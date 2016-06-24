class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show]
    def index

      @profiles = Profile.includes(:place).all

    end


  def show
  end
    def set_profile
      begin
        @profile = Profile.find(params[:id])
      rescue ActiveRecord::RecordNotFound => e
        redirect_to action: :index
      end
    end
end
