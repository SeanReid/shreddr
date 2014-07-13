class Message < ActiveRecord::Base
  belongs_to :user
  validates :status, presence: true, length: { maximum: 140 }
end
