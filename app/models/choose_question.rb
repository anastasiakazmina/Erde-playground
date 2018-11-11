class ChooseQuestion < ApplicationRecord
  belongs_to :visa_application
  has_many :positions
end
