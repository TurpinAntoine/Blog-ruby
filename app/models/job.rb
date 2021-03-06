class Job < ApplicationRecord

  belongs_to :user

  has_many :comments

  validates :title, :description, presence: true
  validates :title, length: { maximum: 255 }


end
