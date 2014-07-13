class Face < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :image, using: :url
end
