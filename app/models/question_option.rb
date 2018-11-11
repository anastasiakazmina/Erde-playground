class QuestionOption < ApplicationRecord
  belongs_to :visa_application, through: :choosequestion
  has_many :options
end
