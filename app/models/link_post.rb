class LinkPost < Post
  # this functionality is provided by a plug-in
  # it appears that some sites block this kind of validation at the root
  # eg. yahoo.com will fail, but a permalink to a news story at yahoo.com will work OK
  validates_http_url :url
end
