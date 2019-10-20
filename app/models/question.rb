class Question < ApplicationRecord
  belongs_to :test_survey
  has_many :responses, dependent: :destroy
end
