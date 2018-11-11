class User < ApplicationRecord
  attr_accessor :login
  has_many :documents, foreign_key: :documents_id
  has_many :files, foreign_key: :files_id
  has_many :visas, foreign_key: :visas_id
  has_many :text_answers, foreign_key: :text_answers_id
  has_many :choose_answers, foreign_key: :choose_answers_id
end
