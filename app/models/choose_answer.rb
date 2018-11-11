class ChooseAnswer < ApplicationRecord
  belongs_to :visa_application, class_name: "Country", foreign_key: :visa_application_id
  has_one :answer, foreign_key: :answer_id
end
