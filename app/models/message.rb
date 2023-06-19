class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user, dependent: :destroy
  
  validates :content, presence: true

end
