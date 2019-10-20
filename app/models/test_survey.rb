class TestSurvey < ApplicationRecord
	has_many :questions, dependent: :destroy
end
