class AdminUser < ApplicationRecord

	scope :sorted, lambda { order("username") }

	has_secure_password

	EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

	validates :username, 	:length => { :maximum => 50 },
							:uniqueness => true
	validates :email, 		:presence => true,
							:length => { :maximum => 100 },
							:format => EMAIL_REGEX,
							:confirmation => true
	validates :password,	:presence => true,
							:confirmation => true,
							:length => { minimum: 8 }

end
