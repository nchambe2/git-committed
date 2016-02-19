class Filter < ActiveRecord::Base
  has_many :user_filters

  validates :filterable_id, presence: true
  validates :filterable_type, presence: true
end
