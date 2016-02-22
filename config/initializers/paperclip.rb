require 'aws-sdk'

Paperclip::Attachment.default_options.merge!(
  url:                  ':s3_domain_url',
  path:                 ':class/:attachment/:id/:style/:filename',
  s3_permissions:       :private,
  s3_protocol:          'https'
)
