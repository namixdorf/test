class LoginNotifier < ActionMailer::Base
  default from: "noreply@example.com"
  
  def password_reset(login, password)
    @login    = login
    @password = password
    mail(:to => login.email, :subject => "Password Reset")
  end
  
end