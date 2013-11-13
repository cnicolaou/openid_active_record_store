class OpenidNonce < OpenidAbstract
  attr_accessible :target, :server_url, :timestamp

  # attempt to scan timestamps (integers) first for fast access.
  def self.exists_by_target?(timestamp, salt, target)
    where(:timestamp => timestamp, :target => target).size > 0
  end

end
