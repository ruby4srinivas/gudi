module Admin
  class UploadsController < Admin::ApplicationController
    def new
      @upload = Upload.new
    end

    def create
      @upload.profile_id = 1 #current_user
      @upload = Upload.create(upload_params)
      #@upload = Upload.new(upload_params)
byebug
      if @upload.save
        render json: { message: "success" }, :status => 200
      else
        #  you need to send an error header, otherwise Dropzone
        #  will not interpret the response as an error:
        render json: { error: @upload.errors.full_messages.join(',')}, :status => 400
      end
    end

    private
    def upload_params
      params.require(:upload).permit(:image)
    end
  end
end