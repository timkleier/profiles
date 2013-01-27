class Account < ActiveRecord::Base
	has_many :matrices
	has_many :profiles
end
