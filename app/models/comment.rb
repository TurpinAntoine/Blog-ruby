class Comment < ApplicationRecord

  belongs_to :job
  belongs_to :user

  validates :comment, presence: true
  validates :comment, length: { maximum: 255 }

end
