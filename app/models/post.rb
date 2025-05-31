class Post < ApplicationRecord
  validates :title, presence: true, length: { minium: 5, maximum: 50 }
  validates :body, presence: true, length: { minimum: 10, maximum: 1000 }
  belongs_to :user
  has_many :comments, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    [ "body", "title" ] # , "user_email", "user_name" ]
  end

  def self.ransackable_associations(auth_object = nil)
    [ "user" ]
  end
end
