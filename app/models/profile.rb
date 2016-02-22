class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :questions, through: :answers
  has_attached_file :picture,
                    :storage => :s3,
                    :s3_credentials => {
                                        :bucket => ENV['AWS_S3_BUCKET'],
                                        :access_key_id=> ENV['AWS_ACCESS_KEY_ID'],
                                        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
                                        }
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  paginates_per 15
end
