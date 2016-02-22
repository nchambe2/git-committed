def create
  @document = current_user.documents.create(params[:document])
end
