class DocumentController < ApplicationController

  def create
    @document = current_user.documents.create!(params[:document])
  end

#need show method
  def show
    profile = Profile.find(params[:id])
    @document = profile.document.direct_upload_url
  end


  private

  def document_params
    params.require(:document).permit(:direct_upload_url)
  end
end