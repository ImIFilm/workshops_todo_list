class Task < ApplicationRecord
  validates :title, presence: true

  validates_date :deadline, :after => :now, :after_message => "it can not be past date!"

  scope :newest, lambda{order("tasks.deadline ASC")}
end
