class DocumentController < ApplicationController

  def create
    @document = current_user.documents.create!(params[:document])
  end

#need show method
  def show

  end
end