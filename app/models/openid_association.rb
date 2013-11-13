class OpenidAssociation < OpenidAbstract
  attr_accessible :server_url, :target, :handle, :secret, :issued_at, :lifetime, :assoc_type
end
