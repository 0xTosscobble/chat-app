class Account < ApplicationRecord
    include ImageUploader::Attachment(:image)
    belongs_to :user, inverse_of: :account

    validates :username, presence: true, uniqueness: true


end
