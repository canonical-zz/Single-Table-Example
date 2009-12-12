class AttachmentPost < Post
  has_attachment :content_type =>  :image,
                 :storage => :file_system,
                 :max_size => 1.megabytes

  validates_as_attachment
    
end
