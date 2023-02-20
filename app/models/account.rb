class Account < ApplicationRecord
    include ImageUploader::Attachment(:image)
end
