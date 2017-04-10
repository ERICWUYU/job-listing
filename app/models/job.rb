class Job < ApplicationRecord
  belongs_to :user
  validates :title, presence: true

  has_many :job_admin


  scope :recent, -> {order("created_at DESC")}
end
