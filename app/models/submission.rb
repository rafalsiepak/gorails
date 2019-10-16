class Submission < ApplicationRecord
  mount_uploader :submission_image, SubmissionImageUploader
  mount_uploader :submission_image, SubmissionVideoUploader

  belongs_to :user
end
