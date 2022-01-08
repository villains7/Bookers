class Book < ApplicationRecord
  validates :title, presence: {message: "Error"}
  validates :body, presence: {message: "Error"}
end
