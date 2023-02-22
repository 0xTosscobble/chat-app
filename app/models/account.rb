class Account < ApplicationRecord
    include ImageUploader::Attachment(:image)
    belongs_to :user
end
