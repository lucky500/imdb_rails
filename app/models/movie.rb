class Movie < ApplicationRecord
  belongs_to :user
  belongs_to :categories
end
