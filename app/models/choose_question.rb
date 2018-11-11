class ChooseQuestion < ApplicationRecord
  belongs_to :visa_application, class_name: "Country", foreign_key: :visa_application_id
  has_many :positions, foreign_key: :positions_id
end
