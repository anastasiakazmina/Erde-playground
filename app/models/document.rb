class Document < ApplicationRecord
    belongs_to :user, foreign_key: :user_id
    has_many :files, foreign_key: :files_id
end
