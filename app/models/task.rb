class Task < ApplicationRecord
  validates :title, presence: true

  scope :newest, lambda{order("tasks.deadline ASC")}
end
