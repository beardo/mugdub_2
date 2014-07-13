class Guess < ActiveRecord::Base
  belongs_to :face
  belongs_to :user
end
