class Resume < ApplicationRecord

  mount_uploader :attachment, AttachmentUploader

  validates :content, presence: true
end
