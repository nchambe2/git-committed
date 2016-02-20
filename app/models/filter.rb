class Filter < ActiveRecord::Base
  belongs_to :filterable, polymorphic: true
end