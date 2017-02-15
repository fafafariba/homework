class User < ActiveRecord::Base
  attr_reader :password

  before_validation :ensure_session_token

  validates :username, :session_token, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validate :password_digest

  def password_digest_blank
    if password == ""
      self.errors[:password] << "cannot be blank"
    end
  end

  def find_by_credentials
    User.find_by(username: self.username, session_token: self.session_token)
  end

  def generate_session_token
    SecureRandom::urlsafe_base46
  end

  def reset_session_token!
    self.session_token = generate_session_token
    self.save
  end

  def ensure_session_token
    unless self.session_token
      self.session_token = generate_session_token
    end
  end

  def password= #(password) #attr_reader takes care of this?
    self.password_digest = BCrypt::Password.create(@password)
  end

end
