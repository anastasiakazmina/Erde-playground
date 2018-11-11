class ChooseAnswer < ApplicationRecord
  belongs_to :visa_application
  has_one :answer
end
