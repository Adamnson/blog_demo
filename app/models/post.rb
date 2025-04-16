class Post < ApplicationRecord
  validates :title, presence: true, length: { minium: 5, maximum: 50 }
end
