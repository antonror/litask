class Task < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  scope :incomplete, -> { where(completed: 'false') }
  scope :completed, -> { where(completed: 'true') }

  validates :user_id, presence: true

  validates :content, presence: true, length: { maximum: 140 }
  validates :category, presence: true
  validates :priority, presence: true


end
