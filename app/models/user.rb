# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(80)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  
  include PasswordAuthenticatable
  
end
