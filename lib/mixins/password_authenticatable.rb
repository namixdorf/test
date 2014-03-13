# Author/Copyright: Neal White, Cohesive Creative & Code, Inc., 2012
# License: MIT License (http://en.wikipedia.org/wiki/MIT_License)
module PasswordAuthenticatable
  extend ActiveSupport::Concern
    
  included do
    
    has_secure_password
      
    validates_presence_of     :email
    validates_format_of       :email, :with => RegexLibrary::EMAIL, :message => RegexLibrary::EMAIL_MESSAGE, :allow_blank => false
    validates_uniqueness_of   :email, :message => 'is already registered!'
    
    
    attr_accessible :email, :password, :password_confirmation
    
  end
   
  module ClassMethods
  
    def authenticate(email, password)
      find_by_email(email).try(:authenticate, password)
    end
    
    def random_password(length=10)
      password = ''
      chars = (0..9).to_a + ('A'..'Z').to_a + ('a'..'z').to_a
      length.times do
        password += chars[rand(chars.length)].to_s
      end
      password
    end
  
  end # class methods
    
  def reset_password!
    new_pass = self.class.random_password
    self.update_attributes(:password => new_pass, :password_confirmation => new_pass)
    LoginNotifier.password_reset(self, new_pass).deliver
  end
  
end