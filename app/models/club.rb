class Club < ActiveRecord::Base
  attr_accessor :pwd
  attr_accessible :contact, :department, :fcoordinator, :logo, :name, :user, :pwd
  validates :user , :presence=> true , :uniqueness => true, :length => { :in => 3..20}
  validates :pwd, :presence => true
  validates_length_of :pwd, :in => 5..20

  before_save :encrypt_password
  after_save :clear_password

  def encrypt_password
    if pwd.present?
      self.salt = BCrypt::Engine.generate_salt
      self.password = BCrypt::Engine.hash_secret(pwd, salt)
    end
  end

  def clear_password
    self.pwd = nil
  end

  def self.authenticate(username="", password ="")
    user = Club.find_by_user(username)

    if user and user.match_password(password)
      return user
    else
      return false
    end
  end

  def match_password(password="")
    self.password == BCrypt::Engine.hash_secret(password,salt)
  end

end


