class Book < ApplicationRecord
  validates :title, presence: {message: "Empty error"}
  validates :body, presence: {message: "Empty error"}
end
