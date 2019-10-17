class Community < ApplicationRecord
  belong_to :user
  has_many :submissions
end
