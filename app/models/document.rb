class Document < ApplicationRecord
  validates :signature, presence: true
  belongs_to :user
end
