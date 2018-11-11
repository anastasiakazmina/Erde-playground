class QuestionOption < ApplicationRecord
  belongs_to :visa_application, through: :choosequestion, class_name: "Country", foreign_key: :visa_application_id
  has_many :options, foreign_key: :options_id
end
