class Support < ApplicationRecord
  validates :task, presence: true, length: {maximum: 50}
  validates :task, presence: true, length: {maximum: 100}
end
