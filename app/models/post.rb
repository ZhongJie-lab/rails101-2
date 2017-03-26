class Post < ApplicationRecord
  belongs_to :group, counter_cache: true
  belongs_to :user, counter_cache: true

  validates :content, presence: true

  scope :recent, -> { order("created_at DESC")}
end
