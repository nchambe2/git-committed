class Document < ActiveRecord::Base
  belongs_to :profile
  has_attached_file :upload
  validates_attachment :upload, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end