class ImagePost < Post
  has_attachment :content_type => ['application/pdf', 'application/msword', 'text/plain', :image],
                 :storage => :file_system,
                 :resize_to => "800x800>",
                 :max_size => 5.megabytes

  validates_as_attachment  
end
