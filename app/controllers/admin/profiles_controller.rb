class Admin::ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  #rescue_from ActiveRecord::RecordNotFound, with: :index
  # GET /admin/profiles
  # GET /admin/profiles.json
  def index
    @profiles = Profile.includes(:place).all

  end

  # GET /admin/profiles/1
  # GET /admin/profiles/1.json
  def show

  end

  # GET /admin/profiles/new
  def new
    @profile = Profile.new

  end

  # GET /admin/profiles/1/edit
  def edit
  end

  # POST /admin/profiles
  # POST /admin/profiles.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to [:admin, @profile], notice: 'Profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profile }
      else
        format.html { render action: 'new' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/profiles/1
  # PATCH/PUT /admin/profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to [:admin, @profile], notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/profiles/1
  # DELETE /admin/profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to admin_profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_profile
    begin
      @profile = Profile.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
      redirect_to action: :index
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def profile_params
    params.require(:profile).permit(:title, :place, :city, :state, :image, :diety, :religion, :temple_type, :place_id,:about_temple)
  end
end
