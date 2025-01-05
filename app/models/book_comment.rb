class BookComment < ApplicationRecord
  belongs_to :user
  belongs_to :Book

  validates :comment, presence: true
end
