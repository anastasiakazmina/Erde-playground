class TextAnswer < ApplicationRecord
    belongs_to :user, foreign_key: :user_id
    has_one :answer, foreign_key: :answer_id
end
