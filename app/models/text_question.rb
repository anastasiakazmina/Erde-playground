class TextQuestion < ApplicationRecord
  belongs_to :country, through: :visa_application, class_name: "Country", foreign_key: :visa_application_id, 
end
